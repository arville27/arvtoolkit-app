import 'package:arvtoolkit/box/settings_box.dart';
import 'package:arvtoolkit/pages/splyr_page.dart';
import 'package:arvtoolkit/repository/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'pages/settings_page.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SettingsBoxAdapter());
  await Hive.openBox<SettingsBox>("settings");
  runApp(const ProviderScope(child: ApplicationEntrypoint()));
}

class ApplicationEntrypoint extends ConsumerStatefulWidget {
  const ApplicationEntrypoint({super.key});

  @override
  ConsumerState<ApplicationEntrypoint> createState() =>
      _ApplicationEntrypointState();
}

class _ApplicationEntrypointState extends ConsumerState<ApplicationEntrypoint> {
  int _selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    String currentAppTheme = ref.watch(
      settingsRepositoryProvider.select((value) => value.applicationTheme),
    );
    ThemeMode theme = toThemeMode(currentAppTheme);
    return MaterialApp(
      title: 'Arvtoolkit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      themeMode: theme,
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedPageIndex,
          onDestinationSelected: (newVal) =>
              setState(() => _selectedPageIndex = newVal),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.music_note),
              label: "Lyrics",
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
        body: const [
          SplyrPage(),
          SettingsPage(),
        ][_selectedPageIndex],
      ),
    );
  }

  ThemeMode toThemeMode(String currentAppTheme) {
    return switch (currentAppTheme) {
      "dark" => ThemeMode.dark,
      "light" => ThemeMode.light,
      _ => ThemeMode.system,
    };
  }
}
