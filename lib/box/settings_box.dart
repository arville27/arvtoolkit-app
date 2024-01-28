import 'package:hive_flutter/adapters.dart';

part 'settings_box.g.dart';

@HiveType(typeId: 0)
class SettingsBox {
  @HiveField(0)
  String arvtoolkitApi;
  @HiveField(1)
  String applicationTheme;

  SettingsBox({required this.arvtoolkitApi, required this.applicationTheme});

  factory SettingsBox.copyFrom(SettingsBox existing) {
    return SettingsBox(
      arvtoolkitApi: existing.arvtoolkitApi,
      applicationTheme: existing.applicationTheme,
    );
  }
}
