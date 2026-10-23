import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:share_plus/share_plus.dart';

import '../services/google_auth_service.dart';
import '../services/referral_service.dart';

class ReferEarnScreen extends StatefulWidget {
  const ReferEarnScreen({super.key, this.referralService});

  final ReferralService? referralService;

  @override
  State<ReferEarnScreen> createState() => _ReferEarnScreenState();
}

class _ReferEarnScreenState extends State<ReferEarnScreen>
    with WidgetsBindingObserver {
  static const int referralReward = ReferralService.rewardPoints;
  late final ReferralService _referrals =
      widget.referralService ?? ReferralService();
  final TextEditingController _codeInput = TextEditingController();
  ReferralProfile? _profile;
  String? _error;
  bool _refreshing = false;
  bool _redeeming = false;
  bool _sharing = false;
  bool _signingIn = false;

  String referralCode = '';

  bool loading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _loadReferralCode();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _codeInput.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed &&
        !_redeeming &&
        !_signingIn &&
        !_sharing) {
      unawaited(_loadReferralCode());
    }
  }

  String _messageFor(Object error) {
    if (error is FormatException) return error.message;
    if (error is FirebaseException && error.code == 'permission-denied') {
      return 'Referral verification is not enabled on the server yet. Please try again later.';
    }
    if (error is FirebaseException && error.code == 'requires-google-sign-in') {
      return 'Sign in with Google to use referrals.';
    }
    return 'Unable to connect to referral verification. Check your connection and retry.';
  }

  Future<void> _signIn() async {
    if (_signingIn) return;
    setState(() => _signingIn = true);
    try {
      final user = await GoogleAuthService.signInWithGoogle();
      if (!mounted) return;
      if (user == null) {
        setState(
          () =>
              _error = GoogleAuthService.lastError ?? 'Sign-in was cancelled.',
        );
      } else {
        await _loadReferralCode();
      }
    } finally {
      if (mounted) setState(() => _signingIn = false);
    }
  }

  Future<void> _redeem() async {
    if (_redeeming || _profile == null || _profile!.referredBy != null) return;
    setState(() {
      _redeeming = true;
      _error = null;
    });
    try {
      final profile = await _referrals.redeem(_codeInput.text);
      if (!mounted) return;
      setState(() => _profile = profile);
      _codeInput.clear();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Code redeemed. Your inviter earned 1,000 points.'),
        ),
      );
    } catch (error) {
      if (mounted) setState(() => _error = _messageFor(error));
    } finally {
      if (mounted) setState(() => _redeeming = false);
    }
  }

  // =========================================================
  // LOAD REFERRAL CODE
  // =========================================================

  Future<void> _loadReferralCode() async {
    if (_refreshing) return;
    _refreshing = true;
    try {
      if (!_referrals.isSignedIn) {
        if (mounted)
          setState(() {
            loading = false;
            _profile = null;
            referralCode = '';
          });
        return;
      }
      final profile = await _referrals.getProfile();
      if (!mounted) return;
      setState(() {
        referralCode = profile.code;
        _profile = profile;
        _error = null;
        loading = false;
      });
      await _referrals.syncRewards();
    } catch (error) {
      if (mounted)
        setState(() {
          _error = _messageFor(error);
          loading = false;
        });
    } finally {
      _refreshing = false;
      if (mounted) setState(() {});
    }
  }

  // =========================================================
  // COPY REFERRAL CODE
  // =========================================================

  Future<void> _copyReferralCode() async {
    if (referralCode.isEmpty) return;

    try {
      await Clipboard.setData(ClipboardData(text: referralCode));
    } catch (_) {
      if (mounted)
        setState(
          () => _error = 'Unable to copy. Select and copy your referral code.',
        );
      return;
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Referral code copied!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  // =========================================================
  // SHARE REFERRAL
  // =========================================================

  Future<void> _shareReferral() async {
    if (referralCode.isEmpty || _sharing) return;
    setState(() => _sharing = true);
    final message = ReferralService.shareMessage(referralCode);
    try {
      final box = context.findRenderObject();
      final result = await SharePlus.instance.share(
        ShareParams(
          text: message,
          subject: 'Join me on DevOps Quiz',
          sharePositionOrigin: box is RenderBox
              ? box.localToGlobal(Offset.zero) & box.size
              : null,
        ),
      );
      if (result.status == ShareResultStatus.unavailable) {
        await Clipboard.setData(ClipboardData(text: message));
        if (mounted)
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Invite copied. Share it with your friend.'),
            ),
          );
      }
    } catch (_) {
      try {
        await Clipboard.setData(ClipboardData(text: message));
        if (mounted)
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Invite copied. Share it with your friend.'),
            ),
          );
      } catch (_) {
        if (mounted)
          setState(
            () => _error =
                'Sharing is unavailable. Copy your referral code instead.',
          );
      }
    } finally {
      if (mounted) setState(() => _sharing = false);
    }
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refer & Earn'),
        actions: [
          IconButton(
            tooltip: 'Refresh referrals',
            onPressed: _refreshing ? null : _loadReferralCode,
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),

      body: SafeArea(
        child: loading
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                padding: const EdgeInsets.all(20),

                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 550),

                    child: Column(
                      children: [
                        if (!_referrals.isSignedIn) ...[
                          const Text(
                            'Sign in with Google to create a verified referral code or redeem an invitation.',
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 12),
                          FilledButton.icon(
                            onPressed: _signingIn ? null : _signIn,
                            icon: const Icon(Icons.login_rounded),
                            label: Text(
                              _signingIn
                                  ? 'Signing in...'
                                  : 'Sign in with Google',
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                        if (_error != null) ...[
                          Text(
                            _error!,
                            key: const ValueKey('referral-error'),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                          TextButton.icon(
                            onPressed: _refreshing ? null : _loadReferralCode,
                            icon: const Icon(Icons.refresh_rounded),
                            label: const Text('Retry'),
                          ),
                          const SizedBox(height: 16),
                        ],
                        // =================================
                        // GIFT ICON
                        // =================================
                        Container(
                          width: 100,
                          height: 100,

                          decoration: BoxDecoration(
                            color: Theme.of(
                              context,
                            ).colorScheme.primaryContainer,

                            shape: BoxShape.circle,
                          ),

                          child: Icon(
                            Icons.card_giftcard,

                            size: 55,

                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),

                        const SizedBox(height: 22),

                        // =================================
                        // TITLE
                        // =================================
                        const Text(
                          'Refer & Earn',
                          textAlign: TextAlign.center,

                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          'Invite your friends to DevOps Quiz and earn rewards.',

                          textAlign: TextAlign.center,

                          style: TextStyle(
                            fontSize: 17,

                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),

                        const SizedBox(height: 25),

                        // =================================
                        // REWARD CARD
                        // =================================
                        Card(
                          elevation: 5,

                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 22,
                            ),

                            child: Column(
                              children: [
                                const Text(
                                  'SUCCESSFUL REFERRAL REWARD',

                                  textAlign: TextAlign.center,

                                  style: TextStyle(
                                    fontSize: 13,

                                    fontWeight: FontWeight.bold,

                                    letterSpacing: 1.2,
                                  ),
                                ),

                                const SizedBox(height: 12),

                                const Text('⭐', style: TextStyle(fontSize: 40)),

                                const SizedBox(height: 5),

                                Text(
                                  '+$referralReward',

                                  style: TextStyle(
                                    fontSize: 38,

                                    fontWeight: FontWeight.bold,

                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                                ),

                                const Text(
                                  'POINTS',

                                  style: TextStyle(
                                    fontSize: 15,

                                    fontWeight: FontWeight.bold,

                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // =================================
                        // REFERRAL CODE TITLE
                        // =================================
                        const Text(
                          'Your Referral Code',

                          style: TextStyle(
                            fontSize: 18,

                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 12),

                        // =================================
                        // REFERRAL CODE
                        // =================================
                        Container(
                          width: double.infinity,

                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 18,
                          ),

                          decoration: BoxDecoration(
                            color: Theme.of(
                              context,
                            ).colorScheme.primaryContainer,

                            borderRadius: BorderRadius.circular(16),

                            border: Border.all(
                              color: Theme.of(
                                context,
                              ).colorScheme.primary.withValues(alpha: 0.3),
                            ),
                          ),

                          child: Row(
                            children: [
                              Expanded(
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: SelectableText(
                                    referralCode.isEmpty
                                        ? 'No verified code yet'
                                        : referralCode,

                                    textAlign: TextAlign.center,

                                    style: const TextStyle(
                                      fontSize: 24,

                                      fontWeight: FontWeight.bold,

                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                              ),

                              IconButton(
                                tooltip: 'Copy Code',

                                onPressed: referralCode.isEmpty
                                    ? null
                                    : _copyReferralCode,

                                icon: const Icon(Icons.content_copy),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 25),

                        // =================================
                        // SHARE BUTTON
                        // =================================
                        SizedBox(
                          width: double.infinity,
                          height: 55,

                          child: ElevatedButton.icon(
                            onPressed: referralCode.isEmpty || _sharing
                                ? null
                                : _shareReferral,

                            icon: const Icon(Icons.person_add_alt_1),

                            label: const Text(
                              'Refer a Friend',

                              style: TextStyle(
                                fontSize: 18,

                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        if (_profile != null) ...[
                          Text(
                            'Successful referrals: ${_profile!.referralCount}',
                            key: const ValueKey('referral-count'),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Referral points: ${_profile!.rewardPoints}',
                            key: const ValueKey('referral-points'),
                          ),
                          const SizedBox(height: 20),
                          if (_profile!.referredBy != null)
                            Text(
                              'Redeemed code: ${_profile!.redeemedCode}',
                              key: const ValueKey('referral-redeemed'),
                            )
                          else ...[
                            TextField(
                              key: const ValueKey('referral-code-input'),
                              controller: _codeInput,
                              enabled: !_redeeming,
                              maxLength: 20,
                              autocorrect: false,
                              textCapitalization: TextCapitalization.characters,
                              decoration: const InputDecoration(
                                labelText: 'Friend\'s referral code',
                                hintText: 'DEV-XXXXXXXX',
                                border: OutlineInputBorder(),
                              ),
                              onSubmitted: (_) => _redeem(),
                            ),
                            const SizedBox(height: 8),
                            FilledButton.icon(
                              key: const ValueKey('referral-redeem'),
                              onPressed: _redeeming ? null : _redeem,
                              icon: const Icon(Icons.verified_outlined),
                              label: Text(
                                _redeeming ? 'Verifying...' : 'Redeem code',
                              ),
                            ),
                          ],
                          const SizedBox(height: 24),
                        ],

                        // =================================
                        // HOW IT WORKS
                        // =================================
                        Align(
                          alignment: Alignment.centerLeft,

                          child: Text(
                            'How it works',

                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),

                        const SizedBox(height: 15),

                        const Card(
                          elevation: 2,

                          child: Padding(
                            padding: EdgeInsets.all(18),

                            child: Column(
                              children: [
                                _InfoRow(
                                  number: '1',
                                  text:
                                      'Share your referral code with a friend.',
                                ),

                                SizedBox(height: 16),

                                _InfoRow(
                                  number: '2',
                                  text:
                                      'Your friend opens DevOps Quiz and signs in with Google.',
                                ),

                                SizedBox(height: 16),

                                _InfoRow(
                                  number: '3',
                                  text:
                                      'Your friend enters your referral code.',
                                ),

                                SizedBox(height: 16),

                                _InfoRow(
                                  number: '4',
                                  text:
                                      'The code is verified once per Google account.',
                                ),

                                SizedBox(height: 16),

                                _InfoRow(
                                  number: '5',
                                  text: 'You receive 1,000 points.',
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        Text(
                          'Points are awarded only after a successful referral.',

                          textAlign: TextAlign.center,

                          style: TextStyle(
                            fontSize: 13,

                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}

// ===========================================================
// INFORMATION ROW
// ===========================================================

class _InfoRow extends StatelessWidget {
  final String number;
  final String text;

  const _InfoRow({required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        CircleAvatar(
          radius: 16,

          backgroundColor: Theme.of(context).colorScheme.primaryContainer,

          child: Text(
            number,

            style: TextStyle(
              fontWeight: FontWeight.bold,

              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        const SizedBox(width: 14),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 5),

            child: Text(text, style: const TextStyle(fontSize: 16)),
          ),
        ),
      ],
    );
  }
}
