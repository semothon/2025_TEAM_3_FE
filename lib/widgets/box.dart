import 'package:flutter/material.dart';
import 'package:team_3_frontend/theme/app_colors.dart';

class Box extends StatelessWidget {
  final Widget? child;
  final Color fillColor;
  final Color strokeColor;

  const Box({
    super.key,
    this.child,
    this.fillColor = AppColors.box1,
    this.strokeColor = AppColors.box1Border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: fillColor, // 배경 색상
        border: Border.all(
          color: strokeColor, // 테두리 색상
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
