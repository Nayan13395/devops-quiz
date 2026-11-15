import 'dart:async';

import 'package:flutter/material.dart';

import '../l10n/achievement_localizations.dart';
import '../l10n/app_localizations.dart';
import '../services/achievement_service.dart';
import '../services/app_tour_service.dart';
import '../services/point_service.dart';
import '../services/unlock_notice_service.dart';

class UnlockRouteObserver extends NavigatorObserver {
  final topRoute = ValueNotifier<Route<dynamic>?>(null);

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    topRoute.value = route;
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    topRoute.value = previousRoute;
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (topRoute.value == route) topRoute.value = previousRoute;
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (topRoute.value == oldRoute) topRoute.value = newRoute;
  }
}

class UnlockNotifications extends StatefulWidget {
  const UnlockNotifications({
    super.key,
    required this.navigatorKey,
    required this.observer,
    required this.child,
  });

  final GlobalKey<NavigatorState> navigatorKey;
  final UnlockRouteObserver observer;
  final Widget child;

  @override
  State<UnlockNotifications> createState() => _UnlockNotificationsState();
}

class _UnlockNotificationsState extends State<UnlockNotifications>
    with WidgetsBindingObserver {
  Timer? _timer;
  bool _checking = false;
  bool _showing = false;
  bool _needsCheck = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    PointService.changes.addListener(_schedule);
    AppTourService.active.addListener(_schedule);
    AchievementService.changes.addListener(_schedule);
    widget.observer.topRoute.addListener(_schedule);
    _schedule();
  }

  @override
  void dispose() {
    _timer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    PointService.changes.removeListener(_schedule);
    AppTourService.active.removeListener(_schedule);
    AchievementService.changes.removeListener(_schedule);
    widget.observer.topRoute.removeListener(_schedule);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _schedule();
  }

  void _schedule() {
    _needsCheck = true;
    _timer?.cancel();
    _timer = Timer(const Duration(milliseconds: 250), _check);
  }

  bool get _active {
    final state = WidgetsBinding.instance.lifecycleState;
    return state == null || state == AppLifecycleState.resumed;
  }

  Future<void> _check() async {
    if (!mounted ||
        !_active ||
        _checking ||
        _showing ||
        AppTourService.active.value) {
      return;
    }
    _checking = true;
    _needsCheck = false;
    try {
      await UnlockNoticeService.initialize();
      await AchievementService.checkProgress();
      final pending = await UnlockNoticeService.pending();
      if (!mounted || !_active || pending.isEmpty) return;
      final route = widget.observer.topRoute.value;
      // Wait for result dialogs, menus and page navigation to finish.
      if (route is! PageRoute) return;
      if (route.animation?.status == AnimationStatus.forward ||
          route.animation?.status == AnimationStatus.reverse) {
        _schedule();
        return;
      }
      final navigator = widget.navigatorKey.currentState;
      if (navigator == null) return;
      _showing = true;
      await showDialog<void>(
        context: navigator.context,
        barrierDismissible: false,
        builder: (_) => _UnlockDialog(notice: pending.first),
      );
      if (mounted) _schedule();
    } catch (error, stack) {
      debugPrint('Unlock notification check failed: $error\n$stack');
    } finally {
      _checking = false;
      _showing = false;
      if (mounted && _active && _needsCheck) _schedule();
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class _UnlockDialog extends StatefulWidget {
  const _UnlockDialog({required this.notice});

  final UnlockNotice notice;

  @override
  State<_UnlockDialog> createState() => _UnlockDialogState();
}

class _UnlockDialogState extends State<_UnlockDialog> {
  bool _saving = false;
  bool _error = false;

  Future<void> _acknowledge() async {
    setState(() {
      _saving = true;
      _error = false;
    });
    try {
      await UnlockNoticeService.acknowledge(widget.notice);
      if (mounted) Navigator.pop(context);
    } catch (error, stack) {
      debugPrint('Unlock acknowledgement failed: $error\n$stack');
      if (mounted) setState(() => _error = true);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final achievement = widget.notice.achievement;
    final theme = widget.notice.theme;
    return PopScope(
      canPop: false,
      child: AlertDialog(
        key: ValueKey('unlock-${widget.notice.id}'),
        scrollable: true,
        icon: Text(
          achievement?.icon ?? theme!.emoji,
          style: const TextStyle(fontSize: 44),
        ),
        title: Text(
          achievement != null ? l10n.achievementUnlocked : l10n.themeUnlocked,
          textAlign: TextAlign.center,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              achievement != null
                  ? achievementText(context, achievement).title
                  : themeDisplayName(context, theme!),
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            if (achievement != null) ...[
              Text(
                achievementText(context, achievement).description,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text('+${achievement.reward} ${l10n.points}'),
            ] else
              Text(l10n.themeUnlockedMessage, textAlign: TextAlign.center),
            if (_error) Text(l10n.savedDataError),
          ],
        ),
        actions: [
          TextButton(
            onPressed: _saving ? null : _acknowledge,
            child: Text(_error ? l10n.retry : l10n.ok),
          ),
        ],
      ),
    );
  }
}
