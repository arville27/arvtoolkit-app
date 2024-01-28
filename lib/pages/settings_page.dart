import 'package:arvtoolkit/repository/settings_repository.dart';
import 'package:arvtoolkit/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});
  static const _settingsDivider = Divider(thickness: 1.0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String currentAppTheme = ref.watch(
        settingsRepositoryProvider.select((value) => value.applicationTheme));
    String arvtoolkitHost = ref.watch(
        settingsRepositoryProvider.select((value) => value.arvtoolkitApi));
    return CustomScrollView(slivers: [
      SliverAppBar(
        pinned: true,
        expandedHeight: 100.0,
        automaticallyImplyLeading: true,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding: const EdgeInsets.only(left: 20, bottom: 16),
          title: Text(
            'Settings',
            style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
          ),
        ),
      ),
    SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        sliver: SliverList(
          delegate: SliverChildListDelegate.fixed([
            Text(
              "Appearance",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Application Theme",
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) {
                      return const ThemeDialog();
                    },
                  ),
                  child: Text(currentAppTheme.toTitleCase()),
                ),
              ],
            ),
            _settingsDivider,
            const SizedBox(height: 10),
            Text(
              "Server setting",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: const Text(
                "Arvtoolkit API Host",
                style: TextStyle(fontSize: 16),
              ),
              subtitle: Text(arvtoolkitHost),
              trailing: IconButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) {
                    return const ServerDialog();
                  },
                ),
                icon: const Icon(Icons.edit),
              ),
            ),
            _settingsDivider,
            const SizedBox(height: 10),
            Text(
              "About",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Developer: Arville")],
            ),
          ]),
        ),
      ),
    ]);
  }
}

class ServerDialog extends ConsumerStatefulWidget {
  const ServerDialog({super.key});

  @override
  ConsumerState<ServerDialog> createState() => _ServerDialogState();
}

class _ServerDialogState extends ConsumerState<ServerDialog> {
  final _serverHostController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String arvtoolkitHost = ref.watch(
        settingsRepositoryProvider.select((value) => value.arvtoolkitApi));
    _serverHostController.text = arvtoolkitHost;
    return AlertDialog(
      title: const Text("Arvtoolkit API Host"),
      icon: const Icon(Icons.palette),
      contentPadding: const EdgeInsets.symmetric(vertical: 16),
      content: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _serverHostController,
              decoration:
                  const InputDecoration(hintText: "http(s)://server.com:443"),
            )
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            Navigator.pop(context);
            ref
                .read(settingsRepositoryProvider.notifier)
                .setArvtoolkitApi(_serverHostController.text);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

class ThemeDialog extends ConsumerStatefulWidget {
  const ThemeDialog({super.key});

  @override
  ConsumerState<ThemeDialog> createState() => _ThemeDialogState();
}

class _ThemeDialogState extends ConsumerState<ThemeDialog> {
  @override
  Widget build(BuildContext context) {
    String currentAppTheme = ref.watch(
        settingsRepositoryProvider.select((value) => value.applicationTheme));
    return AlertDialog(
      title: const Text("Application Theme"),
      icon: const Icon(Icons.palette),
      contentPadding: const EdgeInsets.symmetric(vertical: 16),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RadioListTile(
              title: const Text("System"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              value: "system",
              groupValue: currentAppTheme,
              onChanged: (value) {
                ref
                    .read(settingsRepositoryProvider.notifier)
                    .setApplicationTheme(value!);
              },
            ),
            RadioListTile(
              title: const Text("Light"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              value: "light",
              groupValue: currentAppTheme,
              onChanged: (value) {
                ref
                    .read(settingsRepositoryProvider.notifier)
                    .setApplicationTheme(value!);
              },
            ),
            RadioListTile(
              title: const Text('Dark'),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              value: "dark",
              groupValue: currentAppTheme,
              onChanged: (value) {
                ref
                    .read(settingsRepositoryProvider.notifier)
                    .setApplicationTheme(value!);
              },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Okay'),
        ),
      ],
    );
  }
}
