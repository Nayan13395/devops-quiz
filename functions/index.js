const {initializeApp} = require("firebase-admin/app");
const {getFirestore, FieldValue} = require("firebase-admin/firestore");
const {onCall, HttpsError} = require("firebase-functions/v2/https");
const {onSchedule} = require("firebase-functions/v2/scheduler");
const {awardTopRanks} = require("./leaderboard_logic");

initializeApp();

const db = getFirestore();
const dailyRewards = [5000, 4000, 3000, 2000, 1000];
const maxPointsPerEvent = 30000;
const maxDailyPoints = 100000;

function utcDateKey(date = new Date()) {
  return date.toISOString().slice(0, 10);
}

exports.recordLeaderboardPoints = onCall(async (request) => {
  const uid = request.auth?.uid;
  if (!uid) {
    throw new HttpsError("unauthenticated", "Sign in to join the leaderboard.");
  }

  const points = request.data?.points;
  if (!Number.isInteger(points) || points <= 0 || points > maxPointsPerEvent) {
    throw new HttpsError("invalid-argument", "Invalid points amount.");
  }

  const date = utcDateKey();
  const playerRef = db
      .collection("dailyLeaderboards")
      .doc(date)
      .collection("players")
      .doc(uid);

  await db.runTransaction(async (transaction) => {
    const player = await transaction.get(playerRef);
    const total = (player.data()?.points || 0) + points;
    if (total > maxDailyPoints) {
      throw new HttpsError("resource-exhausted", "Daily leaderboard limit reached.");
    }

    const token = request.auth.token;
    transaction.set(playerRef, {
      points: total,
      displayName: String(token.name || "Player").slice(0, 60),
      photoUrl: typeof token.picture === "string" ? token.picture : "",
      updatedAt: FieldValue.serverTimestamp(),
    }, {merge: true});
  });

  return {date};
});

exports.finalizeDailyLeaderboard = onSchedule(
    {schedule: "5 0 * * *", timeZone: "UTC", retryCount: 3},
    async () => {
      const yesterday = new Date();
      yesterday.setUTCDate(yesterday.getUTCDate() - 1);
      const date = utcDateKey(yesterday);
      const finalizationRef = db.collection("dailyLeaderboardFinalizations").doc(date);
      const finalization = await finalizationRef.get();
      if (finalization.exists && finalization.data()?.complete === true) return;

      const snapshot = await db
          .collection("dailyLeaderboards")
          .doc(date)
          .collection("players")
          .orderBy("points", "desc")
          .get();
      const players = snapshot.docs;
      const winners = awardTopRanks(
          players.map((player) => ({uid: player.id, ...player.data()})),
          dailyRewards,
      );

      for (let offset = 0; offset < winners.length; offset += 450) {
        const batch = db.batch();
        for (const winner of winners.slice(offset, offset + 450)) {
          const rewardRef = db
              .collection("users")
              .doc(winner.uid)
              .collection("leaderboardRewards")
              .doc(date);
          batch.set(rewardRef, {
            date,
            rank: winner.rank,
            dailyPoints: winner.points,
            points: winner.reward,
          });
        }
        await batch.commit();
      }

      await finalizationRef.set({
        complete: true,
        playerCount: players.length,
        winnerCount: winners.length,
        finalizedAt: FieldValue.serverTimestamp(),
      });
    },
);