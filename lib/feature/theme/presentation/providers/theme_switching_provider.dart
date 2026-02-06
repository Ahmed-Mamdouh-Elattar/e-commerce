import 'dart:ui';

import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/providers/shared_preferences_provider/shared_preferecne_provider.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'theme_switching_provider.g.dart';

@riverpod
class ThemeSwitching extends _$ThemeSwitching {
  @override
  ThemeMode build() {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    bool? isDarkTheme = sharedPreferences.getBool(isDarkModeKey);
    if (isDarkTheme == null) {
      var brightness = PlatformDispatcher.instance.platformBrightness;
      bool isDarkMode = brightness == Brightness.dark;
      return isDarkMode ? ThemeMode.dark : ThemeMode.light;
    } else if (isDarkTheme) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.light;
    }
  }

  void toggleTheme(bool isDarkMode) {
    state = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    ref.read(sharedPreferencesProvider).setBool(isDarkModeKey, isDarkMode);
  }
}
