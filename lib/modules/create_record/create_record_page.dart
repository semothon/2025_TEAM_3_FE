import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import '../../widgets/box.dart';
import 'create_record_controller.dart';

class CreateRecordPage extends GetView<CreateRecordController> {
  const CreateRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CreateRecordController());
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildRecordTypeToggle(),
                const SizedBox(height: 16),
                _buildTitleField(),
                const SizedBox(height: 16),
                _buildContentField(),
                const SizedBox(height: 16),
                _buildImagePicker(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      automaticallyImplyLeading: false,
      titleSpacing: 20,
      title: Text(
        '기록 작성',
        style: AppTypography.t3SB16,
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Get.back(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Obx(() => TextButton(
                onPressed: controller.isSaving.value ? null : controller.onSave,
                child: Box(
                  fillColor: Colors.white,
                  strokeColor: const Color(0xFFDFDFDF),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: controller.isSaving.value
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.point),
                            ),
                          )
                        : Text(
                            '등록',
                            style: AppTypography.b1R14.copyWith(
                              color: AppColors.grayscale100,
                            ),
                          ),
                  ),
                ),
              )),
        ),
      ],
    );
  }

  Widget _buildRecordTypeToggle() {
    return Obx(() => Row(
          children: [
            GestureDetector(
              onTap: () => controller.toggleRecordType(true),
              child: Box(
                fillColor:
                    controller.isShared.value ? AppColors.point : Colors.white,
                strokeColor: controller.isShared.value
                    ? AppColors.point
                    : const Color(0xFFDFDFDF),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    '공유 기록',
                    style: AppTypography.b1R14.copyWith(
                      color: controller.isShared.value
                          ? Colors.white
                          : AppColors.grayscale100,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () => controller.toggleRecordType(false),
              child: Box(
                fillColor:
                    !controller.isShared.value ? AppColors.point : Colors.white,
                strokeColor: !controller.isShared.value
                    ? AppColors.point
                    : const Color(0xFFDFDFDF),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    '개인 기록',
                    style: AppTypography.b1R14.copyWith(
                      color: !controller.isShared.value
                          ? Colors.white
                          : AppColors.grayscale100,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _buildTitleField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '제목',
          style: AppTypography.t4SB12.copyWith(
            color: AppColors.grayscale100,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller.titleController,
          style: AppTypography.b1R14,
          decoration: InputDecoration(
            hintText: '제목을 입력해주세요.',
            hintStyle: AppTypography.b1R14.copyWith(
              color: AppColors.grayscale75,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFFDFDFDF),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFFDFDFDF),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.point,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );
  }

  Widget _buildContentField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '본문',
          style: AppTypography.t4SB12.copyWith(
            color: AppColors.grayscale100,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller.contentController,
          style: AppTypography.b1R14,
          maxLines: 10,
          decoration: InputDecoration(
            hintText: '내용을 입력해주세요.',
            hintStyle: AppTypography.b1R14.copyWith(
              color: AppColors.grayscale75,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFFDFDFDF),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFFDFDFDF),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.point,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );
  }

  Widget _buildImagePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '사진',
          style: AppTypography.t4SB12.copyWith(
            color: AppColors.grayscale100,
          ),
        ),
        const SizedBox(height: 8),
        Obx(() => controller.imageList.isEmpty
            ? _buildAddPhotoButton()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.imageList.length + 1,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 8),
                      itemBuilder: (context, index) {
                        if (index == controller.imageList.length) {
                          return _buildAddPhotoButton();
                        }
                        return _buildImagePreview(index);
                      },
                    ),
                  ),
                ],
              )),
      ],
    );
  }

  Widget _buildAddPhotoButton() {
    return GestureDetector(
      onTap: controller.pickImages,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xFFDFDFDF),
          ),
        ),
        child: const Center(
          child: Icon(
            Icons.add_a_photo,
            color: AppColors.grayscale75,
            size: 30,
          ),
        ),
      ),
    );
  }

  Widget _buildImagePreview(int index) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.file(
            controller.imageList[index],
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 4,
          right: 4,
          child: GestureDetector(
            onTap: () => controller.removeImage(index),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
