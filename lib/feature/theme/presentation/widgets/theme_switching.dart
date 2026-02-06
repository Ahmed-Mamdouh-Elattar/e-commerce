import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/config/app_theme.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/feature/theme/presentation/providers/theme_switching_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeSwitching extends ConsumerWidget {
  const ThemeSwitching({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      title: Text("Dark Mode", style: AppTextStyle.medium16),
      trailing: ThemeSwitcher(
        builder: (context) {
          return Switch(
            activeTrackColor: AppColor.primary100,
            value: context.isDarkMode ? true : false,
            onChanged: (value) {
              var newTheme = value ? AppTheme.darkTheme : AppTheme.lightTheme;
              ThemeSwitcher.of(
                context,
              ).changeTheme(theme: newTheme, isReversed: !value);
              ref.read(themeSwitchingProvider.notifier).toggleTheme(value);
            },
          );
        },
      ),
    );
  }
}
