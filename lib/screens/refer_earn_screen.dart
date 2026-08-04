import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import '../services/referral_service.dart';

class ReferEarnScreen extends StatefulWidget {
  const ReferEarnScreen({super.key});

  @override
  State<ReferEarnScreen> createState() => _ReferEarnScreenState();
}

class _ReferEarnScreenState extends State<ReferEarnScreen> {
  static const int referralReward = 1000;

  static const String playStoreUrl =
      'https://play.google.com/store/apps/details?id=com.nayan.devops';

  String referralCode = '';

  bool loading = true;

  @override
  void initState() {
    super.initState();

    _loadReferralCode();
  }

  // =========================================================
  // LOAD REFERRAL CODE
  // =========================================================

  Future<void> _loadReferralCode() async {
    final code = await ReferralService.getReferralCode();

    if (!mounted) return;

    setState(() {
      referralCode = code;
      loading = false;
    });
  }

  // =========================================================
  // COPY REFERRAL CODE
  // =========================================================

  Future<void> _copyReferralCode() async {
    if (referralCode.isEmpty) return;

    await Clipboard.setData(ClipboardData(text: referralCode));

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
    if (referralCode.isEmpty) return;

    final message =
        '''
🚀 Join me on DevOps Quiz!

Learn and test your knowledge of Linux, Docker, Kubernetes, AWS, Networking and more.

🎁 My referral code:
$referralCode

Enter this code in DevOps Quiz after installing the app.

Download DevOps Quiz:
$playStoreUrl
''';

    await SharePlus.instance.share(
      ShareParams(text: message, subject: 'Join me on DevOps Quiz'),
    );
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Refer & Earn')),

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
                                child: Text(
                                  referralCode,

                                  textAlign: TextAlign.center,

                                  style: const TextStyle(
                                    fontSize: 24,

                                    fontWeight: FontWeight.bold,

                                    letterSpacing: 2,
                                  ),
                                ),
                              ),

                              IconButton(
                                tooltip: 'Copy Code',

                                onPressed: _copyReferralCode,

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
                            onPressed: _shareReferral,

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
                                  text: 'Your friend installs DevOps Quiz.',
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
                                  text: 'The referral is verified.',
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
