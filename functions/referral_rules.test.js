const {describe, it, before, after, beforeEach} = require('node:test');
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');

describe('referral security rules', {skip: !process.env.FIRESTORE_EMULATOR_HOST}, () => {
  const {initializeTestEnvironment, assertSucceeds, assertFails} = require('@firebase/rules-unit-testing');
  const {doc, getDoc, getDocs, collection, runTransaction, writeBatch, serverTimestamp, increment, updateDoc, deleteDoc, setDoc} = require('firebase/firestore');
  let environment;

  function client(uid, provider = 'google.com', verified = true) {
    return environment.authenticatedContext(uid, {
      email_verified: verified,
      firebase: {sign_in_provider: provider},
    }).firestore();
  }

  async function register(db, uid, code) {
    const batch = writeBatch(db);
    batch.set(doc(db, 'referralAccounts', uid), {
      code, referralCount: 0, rewardPoints: 0,
      referredBy: null, redeemedCode: null, createdAt: serverTimestamp(),
    });
    batch.set(doc(db, 'referralCodes', code), {ownerUid: uid, createdAt: serverTimestamp()});
    await batch.commit();
  }

  async function redeem(db, uid, code, points = 1000) {
    return runTransaction(db, async (transaction) => {
      const account = doc(db, 'referralAccounts', uid);
      const invitation = await transaction.get(doc(db, 'referralCodes', code));
      await transaction.get(account);
      const claim = doc(db, 'referralClaims', uid);
      await transaction.get(claim);
      const owner = invitation.data().ownerUid;
      transaction.update(account, {referredBy: owner, redeemedCode: code});
      transaction.update(doc(db, 'referralAccounts', owner), {
        referralCount: increment(1), rewardPoints: increment(points),
      });
      transaction.set(claim, {referrerUid: owner, code, points, createdAt: serverTimestamp()});
    });
  }

  before(async () => {
    const [host, port] = process.env.FIRESTORE_EMULATOR_HOST.split(':');
    environment = await initializeTestEnvironment({
      projectId: 'demo-devops-referrals',
      firestore: {host, port: Number(port), rules: fs.readFileSync(path.join(__dirname, '..', 'firestore.rules'), 'utf8')},
    });
  });
  beforeEach(async () => environment.clearFirestore());
  after(async () => environment.cleanup());

  it('requires verified Google accounts and atomic code registration', async () => {
    await assertSucceeds(register(client('alice'), 'alice', 'DEV-AAAAAA'));
    await assertFails(register(client('guest', 'anonymous'), 'guest', 'DEV-BBBBBB'));
    await assertFails(register(client('unverified', 'google.com', false), 'unverified', 'DEV-CCCCCC'));
    await assertFails(setDoc(doc(client('bob'), 'referralAccounts', 'bob'), {
      code: 'DEV-DDDDDD', referralCount: 0, rewardPoints: 0,
      referredBy: null, redeemedCode: null, createdAt: serverTimestamp(),
    }));
  });

  it('credits exactly 1000 points in a verified redemption', async () => {
    await register(client('alice'), 'alice', 'DEV-AAAAAA');
    await register(client('bob'), 'bob', 'DEV-BBBBBB');
    await assertSucceeds(redeem(client('bob'), 'bob', 'DEV-AAAAAA'));
    const inviter = (await getDoc(doc(client('alice'), 'referralAccounts', 'alice'))).data();
    assert.equal(inviter.rewardPoints, 1000);
    assert.equal(inviter.referralCount, 1);
    assert.equal((await getDoc(doc(client('bob'), 'referralAccounts', 'bob'))).data().referredBy, 'alice');
  });

  it('rejects self referrals and repeat redemption', async () => {
    await register(client('alice'), 'alice', 'DEV-AAAAAA');
    await register(client('bob'), 'bob', 'DEV-BBBBBB');
    await assertFails(redeem(client('alice'), 'alice', 'DEV-AAAAAA'));
    await redeem(client('bob'), 'bob', 'DEV-AAAAAA');
    await assertFails(redeem(client('bob'), 'bob', 'DEV-AAAAAA'));
    await assertFails(deleteDoc(doc(client('bob'), 'referralClaims', 'bob')));
    await assertFails(updateDoc(doc(client('bob'), 'referralAccounts', 'bob'), {referredBy: null, redeemedCode: null}));
  });

  it('rejects invented rewards and incomplete referral transactions', async () => {
    await register(client('alice'), 'alice', 'DEV-AAAAAA');
    await register(client('bob'), 'bob', 'DEV-BBBBBB');
    await assertFails(updateDoc(doc(client('alice'), 'referralAccounts', 'alice'), {rewardPoints: 1000, referralCount: 1}));
    await assertFails(redeem(client('bob'), 'bob', 'DEV-AAAAAA', 5000));
    await assertFails(setDoc(doc(client('bob'), 'referralClaims', 'bob'), {
      referrerUid: 'alice', code: 'DEV-AAAAAA', points: 1000, createdAt: serverTimestamp(),
    }));
  });

  it('keeps profiles private and prevents code theft or replacement', async () => {
    await register(client('alice'), 'alice', 'DEV-AAAAAA');
    await assertFails(register(client('bob'), 'bob', 'DEV-AAAAAA'));
    await assertFails(getDoc(doc(client('bob'), 'referralAccounts', 'alice')));
    await assertFails(getDocs(collection(client('bob'), 'referralCodes')));
    await assertFails(updateDoc(doc(client('alice'), 'referralCodes', 'DEV-AAAAAA'), {ownerUid: 'bob'}));
    await assertFails(getDoc(doc(environment.unauthenticatedContext().firestore(), 'referralCodes', 'DEV-AAAAAA')));
  });

  it('allows only one inviter to win a simultaneous redemption race', async () => {
    await register(client('alice'), 'alice', 'DEV-AAAAAA');
    await register(client('bob'), 'bob', 'DEV-BBBBBB');
    await register(client('friend'), 'friend', 'DEV-CCCCCC');
    const results = await Promise.allSettled([
      redeem(client('friend'), 'friend', 'DEV-AAAAAA'),
      redeem(client('friend'), 'friend', 'DEV-BBBBBB'),
    ]);
    assert.equal(results.filter((result) => result.status === 'fulfilled').length, 1);
    const alice = (await getDoc(doc(client('alice'), 'referralAccounts', 'alice'))).data();
    const bob = (await getDoc(doc(client('bob'), 'referralAccounts', 'bob'))).data();
    assert.equal(alice.rewardPoints + bob.rewardPoints, 1000);
  });
});