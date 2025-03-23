import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTypography {
  // Heading styles
  static const TextStyle heading1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600, // Semibold
    color: AppColors.grey100,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700, // Medium
    color: AppColors.grey100,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600, // Regular
    color: AppColors.grey100,
  );

  // Body styles
  static const TextStyle bodyLargeB = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600, // Semibold
    color: AppColors.grey100,
  );

  static const TextStyle bodyLargeM = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500, // Medium
    color: AppColors.grey100,
  );

  static const TextStyle bodyMediumB = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600, // Medium
    color: AppColors.grey100,
  );

  static const TextStyle bodyMediumM = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500, // Medium
    color: AppColors.grey100,
  );

  static const TextStyle bodyMediumR = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400, // Regular
    color: AppColors.grey100,
  );

  static const TextStyle bodySmallB = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600, // Semibold
    color: AppColors.grey100,
  );

  static const TextStyle bodySmallR = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400, // Regular
    color: AppColors.grey100,
  );

  static const TextStyle bodyXSmallB = TextStyle(
    fontSize: 9,
    fontWeight: FontWeight.w600, // Semibold
    color: AppColors.grey100,
  );
}
