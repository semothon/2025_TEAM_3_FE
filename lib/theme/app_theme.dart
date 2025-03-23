import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';
import 'app_colors.dart';
import 'app_typography.dart';

class AppTheme {
  static ThemeData get themeData {
    return ThemeData(
      fontFamily: FontFamily.pretendard,
      useMaterial3: true,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      dialogBackgroundColor: Colors.white,
      indicatorColor: AppColors.primaryColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
          circularTrackColor: AppColors.primaryColor,
          refreshBackgroundColor: AppColors.lightColor),
      textTheme: TextTheme(
        displayLarge: AppTypography.heading1.copyWith(color: AppColors.grey100),
        displayMedium:
            AppTypography.heading2.copyWith(color: AppColors.grey100),
        displaySmall: AppTypography.heading3.copyWith(color: AppColors.grey100),
        headlineLarge:
            AppTypography.heading1.copyWith(color: AppColors.grey100),
        headlineMedium:
            AppTypography.heading2.copyWith(color: AppColors.grey100),
        headlineSmall:
            AppTypography.heading3.copyWith(color: AppColors.grey100),
        titleLarge: AppTypography.bodyLargeB.copyWith(color: AppColors.grey100),
        titleMedium:
            AppTypography.bodyLargeM.copyWith(color: AppColors.grey100),
        titleSmall:
            AppTypography.bodyMediumM.copyWith(color: AppColors.grey100),
        bodyLarge: AppTypography.bodyLargeB.copyWith(color: AppColors.grey100),
        bodyMedium:
            AppTypography.bodyMediumM.copyWith(color: AppColors.grey100),
        bodySmall: AppTypography.bodySmallR.copyWith(color: AppColors.grey100),
        labelLarge: AppTypography.bodySmallB.copyWith(color: AppColors.grey100),
        labelMedium:
            AppTypography.bodyMediumR.copyWith(color: AppColors.grey100),
        labelSmall:
            AppTypography.bodyXSmallB.copyWith(color: AppColors.grey100),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 16)),
          backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
          foregroundColor: WidgetStatePropertyAll(Colors.white),
          elevation: WidgetStatePropertyAll(0),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          textStyle: WidgetStatePropertyAll(AppTypography.bodyLargeB),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(AppColors.grey100),
          textStyle: WidgetStatePropertyAll(AppTypography.bodyMediumM),
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: AppColors.lightColor, // 원하는 배경색 설정
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // 모서리 둥글게
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.grey17,
        hintStyle: TextStyle(
          color: AppColors.grey50,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: AppColors.grey33,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: AppColors.grey33,
            width: 1.0,
          ),
        ),
        labelStyle: TextStyle(
          color: AppColors.grey100,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.grey100,
        selectionColor: AppColors.primaryColor.withAlpha(64),
        selectionHandleColor: AppColors.primaryColor.withAlpha(64),
      ),
    );
  }
}
