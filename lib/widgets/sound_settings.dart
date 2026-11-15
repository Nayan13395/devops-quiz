import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../services/game_sound_service.dart';

class SoundSettings extends StatefulWidget {
  const SoundSettings({super.key});

  @override
  State<SoundSettings> createState() => _SoundSettingsState();
}

class _SoundSettingsState extends State<SoundSettings> {
  bool _enabled = true;
  bool _loading = true;
  bool _saving = false;
  bool _previewing = false;
  bool _loadFailed = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _loadFailed = false;
    });
    try {
      final enabled = await GameSoundService.isEnabled();
      if (mounted) setState(() => _enabled = enabled);
    } catch (error, stack) {
      debugPrint('Reading sound preference failed: $error\n$stack');
      if (mounted) setState(() => _loadFailed = true);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _toggle(bool enabled) async {
    if (_saving || _loading) return;
    setState(() => _saving = true);
    try {
      await GameSoundService.setEnabled(enabled);
      if (mounted) setState(() => _enabled = enabled);
    } catch (error, stack) {
      debugPrint('Updating sound preference failed: $error\n$stack');
      if (mounted) {
        _showError(AppLocalizations.of(context)!.soundSettingError);
        await _load();
      }
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  void _showError(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> _preview() async {
    setState(() => _previewing = true);
    try {
      await GameSoundService.preview();
    } catch (error, stack) {
      debugPrint('Sound preview failed: $error\n$stack');
      if (mounted) _showError(AppLocalizations.of(context)!.soundPlaybackError);
    } finally {
      if (mounted) setState(() => _previewing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SwitchListTile.adaptive(
          key: const ValueKey('settings-game-sounds'),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 6,
          ),
          secondary: Icon(
            _enabled ? Icons.volume_up_outlined : Icons.volume_off_outlined,
            size: 28,
          ),
          title: Text(
            l10n.gameSounds,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            _loadFailed
                ? l10n.soundSettingError
                : _loading || _saving
                ? l10n.soundSettingBusy
                : l10n.gameSoundsDescription,
          ),
          value: _enabled,
          onChanged: _loading || _saving || _loadFailed ? null : _toggle,
        ),
        if (_loadFailed)
          TextButton(onPressed: _load, child: Text(l10n.retry))
        else
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton.icon(
                key: const ValueKey('settings-test-sound'),
                icon: const Icon(Icons.play_arrow_rounded),
                label: Text(l10n.testSound),
                onPressed: !_enabled || _loading || _saving || _previewing
                    ? null
                    : _preview,
              ),
            ),
          ),
      ],
    );
  }
}
