import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import '../../theme/app_typography.dart';

class RecordDetailPage extends StatelessWidget {
  RecordDetailPage({super.key});

  final record = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          record.title,
          style: AppTypography.t3SB16,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    record.title,
                    style: AppTypography.t0B24,
                  ),
                  Text(
                    DateFormat('M/d HH:mm').format(record.createdAt),
                    style: AppTypography.b3R12
                        .copyWith(color: AppColors.grayscale75),
                  ),
                ],
              ),
              SizedBox(height: 26),
              Text(record.content, style: AppTypography.b1R14),
              SizedBox(height: 26),
              if (record.fileUrl != null)
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: record.fileUrl!.length,
                    separatorBuilder: (_, __) => SizedBox(width: 8),
                    itemBuilder: (context, imgIndex) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          record.fileUrl![imgIndex],
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              SizedBox(height: 26),
              Divider(
                color: AppColors.grayscale50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
