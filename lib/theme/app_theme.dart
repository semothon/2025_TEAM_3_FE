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
        color: AppColors.point,
        circularTrackColor: Colors.transparent,
        refreshBackgroundColor: AppColors.background,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 16)),
          backgroundColor: WidgetStatePropertyAll(AppColors.point),
          foregroundColor: WidgetStatePropertyAll(AppColors.background),
          elevation: WidgetStatePropertyAll(0),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          textStyle: WidgetStatePropertyAll(AppTypography.t3SB16),
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
        hintStyle: AppTypography.b0L12.copyWith(
          fontSize: 14,
          color: AppColors.grayscale50,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            color: AppColors.grayscale50,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
        cursorColor: AppColors.point,
        selectionColor: AppColors.point.withAlpha(64),
        selectionHandleColor: AppColors.point.withAlpha(64),
      ),
    );
  }
}
