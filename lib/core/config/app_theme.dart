import 'package:e_commerce/core/config/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: AppColor.primary100,
        foregroundColor: Colors.white,
      ),
    ),
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: AppColor.bgLight1,
      surface: AppColor.bgLight1,
      onSurface: Colors.black, // لون النص الأساسي
      surfaceContainerHigh: AppColor.bgLight1,
    ),
    listTileTheme: const ListTileThemeData(tileColor: AppColor.bgLight2),

    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.bgLight1,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.bgLight1,
      surfaceTintColor: AppColor.bgLight1,
      centerTitle: true,
      shadowColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: kToolbarHeight,
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: AppColor.bgLight2,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide.none,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: AppColor.primary100,
        foregroundColor: Colors.white,
      ),
    ),
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppColor.bgDark1,
      surface: AppColor.bgDark1,
      onSurface: Colors.white, // لون النص الأساسي
      surfaceContainerHigh: AppColor.bgDark1,
    ),
    listTileTheme: const ListTileThemeData(tileColor: AppColor.bgDark2),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.bgDark1,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.bgDark1,
      centerTitle: true,
      shadowColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: AppColor.bgDark2,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
