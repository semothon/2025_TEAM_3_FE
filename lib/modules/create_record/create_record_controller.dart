import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:team_3_frontend/data/services/api_service.dart';
import 'package:team_3_frontend/data/services/auth_service.dart';

class CreateRecordController extends GetxController {
  final int groupId = Get.arguments;
  final AuthService _authService = Get.find<AuthService>();
  final ApiService _apiService = Get.find<ApiService>();
  final ImagePicker _picker = ImagePicker();

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  RxList<File> imageList = <File>[].obs; // Changed to store File objects
  RxBool isSaving = false.obs;
  RxBool isShared = true.obs;

  @override
  void onClose() {
    titleController.dispose();
    contentController.dispose();
    super.onClose();
  }

  Future<void> pickImages() async {
    try {
      final List<XFile>? pickedFiles = await _picker.pickMultiImage(
        imageQuality: 80,
        maxWidth: 800,
      );

      if (pickedFiles != null && pickedFiles.isNotEmpty) {
        imageList.addAll(pickedFiles.map((xFile) => File(xFile.path)));
      }
    } catch (e) {
      Get.snackbar('오류', '이미지 선택 중 오류가 발생했습니다: $e');
    }
  }

  void removeImage(int index) {
    imageList.removeAt(index);
  }

  void toggleRecordType(bool value) {
    isShared.value = value;
  }

  Future<void> onSave() async {
    if (titleController.text.isEmpty || contentController.text.isEmpty) {
      Get.snackbar('오류', '제목과 내용을 모두 입력해주세요.');
      return;
    }

    try {
      isSaving.value = true;
      print(isShared.value);
      await _apiService.createRecord(
        title: titleController.text,
        content: contentController.text,
        images: imageList,
        groupId: groupId.toString(),
        isShared: isShared.value,
      );
      Get.back();

      Get.snackbar('성공', '기록이 저장되었습니다.');
    } catch (e) {
      Get.snackbar('오류', '기록 저장에 실패했습니다: $e');
    } finally {
      isSaving.value = false;
    }
  }
}

// lib/modules/my/create_record_page.dart
