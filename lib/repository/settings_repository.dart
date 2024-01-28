import 'package:arvtoolkit/box/settings_box.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_repository.g.dart';

@riverpod
class SettingsRepository extends _$SettingsRepository {
  late Box<SettingsBox> _settingsBox;
  @override
  SettingsBox build() {
    _settingsBox = Hive.box<SettingsBox>("settings");
    if (_settingsBox.get("default") == null) {
      final defaultSettingsBox = SettingsBox(
        arvtoolkitApi: "https://arvtoolkit.local.arv.cx",
        applicationTheme: "system",
      );
      _settingsBox.put("default", defaultSettingsBox);
    }
    return _settingsBox.get("default")!;
  }

  void setArvtoolkitApi(String arvtoolkit) {
    SettingsBox newBox = SettingsBox.copyFrom(state);
    newBox.arvtoolkitApi = arvtoolkit;
    state = newBox;
    _settingsBox.put("default", state);
  }

  void setApplicationTheme(String applicationTheme) {
    SettingsBox newBox = SettingsBox.copyFrom(state);
    newBox.applicationTheme = applicationTheme;
    state = newBox;
    _settingsBox.put("default", state);
  }
}
