import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';
import 'app_colors.dart';
import 'app_typography.dart';

class AppTheme {
  static ThemeData get themeData {
    return ThemeData(
      fontFamily: FontFamily.pretendard,
      useMaterial3: true,
      primaryColor: AppColors.point,
      scaffoldBackgroundColor: AppColors.background,
      dialogBackgroundColor: AppColors.background,
      indicatorColor: AppColors.point,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
          circularTrackColor: AppColors.point,
          refreshBackgroundColor: AppColors.background),
      textTheme: TextTheme(
        displayLarge: AppTypography.t0B24,
        displayMedium: AppTypography.t1B20,
        displaySmall: AppTypography.t2SB18,
        headlineLarge: AppTypography.t0B24,
        headlineMedium: AppTypography.t1B20,
        headlineSmall: AppTypography.t2SB18,
        titleLarge: AppTypography.t0B24,
        titleMedium: AppTypography.t0B24,
        titleSmall: AppTypography.t0B24,
        bodyLarge: AppTypography.t0B24,
        bodyMedium: AppTypography.t0B24,
        bodySmall: AppTypography.t0B24,
        labelLarge: AppTypography.t0B24,
        labelMedium: AppTypography.t0B24,
        labelSmall: AppTypography.t0B24,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 16)),
          backgroundColor: WidgetStatePropertyAll(AppColors.point),
          foregroundColor: WidgetStatePropertyAll(AppColors.background),
          elevation: WidgetStatePropertyAll(0),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          textStyle: WidgetStatePropertyAll(AppTypography.t0B24),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(Colors.black),
          textStyle: WidgetStatePropertyAll(AppTypography.t0B24),
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: AppColors.background, // 원하는 배경색 설정
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // 모서리 둥글게
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.grayscale100,
        hintStyle: TextStyle(
          color: AppColors.grayscale50,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: AppColors.grayscale50,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: AppColors.grayscale50,
            width: 1.0,
          ),
        ),
        labelStyle: TextStyle(
          color: Colors.black,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Colors.black,
        selectionColor: AppColors.point.withAlpha(64),
        selectionHandleColor: AppColors.point.withAlpha(64),
      ),
    );
  }
}
