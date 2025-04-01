import 'package:get/get.dart';
import 'package:team_3_frontend/data/models/record.dart';

class StudyDetailController extends GetxController {
  final studyInfo = Get.arguments;

  // Original record list
  RxList<Record> recordInfo = [
    Record(
      id: 12345678,
      userId: 12345678,
      groupId: 12345678,
      isPublic: true,
      isShared: true,
      title: '3/10 모임 인증',
      content: '안녕하세요! 3/10 스터디 모임 인증 사진들 보내드립니다.',
      imageUrls: [
        'https://img.hankyung.com/photo/202406/01.37074220.1.jpg',
        'https://cdn.eroun.net/news/photo/201904/5248_19828_3216.jpg',
        'https://m.ddaily.co.kr/2023/03/10/2023031018073482881_l.jpg',
        'https://health.chosun.com/site/data/img_dir/2021/10/29/2021102901055_0.jpg',
      ],
      createdAt: DateTime.now(),
    ),
    Record(
      id: 12345678,
      userId: 12345678,
      groupId: 12345678,
      isPublic: true,
      isShared: true,
      title: '3/9 모임 인증',
      content: '안녕하세요! 3/9 스터디 모임 인증 사진들 보내드립니다.',
      imageUrls: [
        'https://img.hankyung.com/photo/202406/01.37074220.1.jpg',
        'https://cdn.eroun.net/news/photo/201904/5248_19828_3216.jpg',
        'https://m.ddaily.co.kr/2023/03/10/2023031018073482881_l.jpg',
      ],
      createdAt: DateTime.now(),
    ),
    Record(
      id: 12345678,
      userId: 12345678,
      groupId: 12345678,
      isPublic: false,
      isShared: false,
      title: '3/11 공부 + 저번주 복습',
      content: '9:00~10:00 단어 암기 복습 10:00~13:00 모의시험',
      imageUrls: [
        'https://img.hankyung.com/photo/202406/01.37074220.1.jpg',
        'https://cdn.eroun.net/news/photo/201904/5248_19828_3216.jpg',
        'https://m.ddaily.co.kr/2023/03/10/2023031018073482881_l.jpg',
        'https://health.chosun.com/site/data/img_dir/2021/10/29/2021102901055_0.jpg',
      ],
      createdAt: DateTime.now(),
    ),
  ].obs;

  // Separate lists for shared and personal records
  RxList<Record> sharedRecords = <Record>[].obs;
  RxList<Record> personalRecords = <Record>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Split records into shared and personal based on isShared
    sharedRecords.value =
        recordInfo.where((record) => record.isShared).toList();
    personalRecords.value =
        recordInfo.where((record) => !record.isShared).toList();
  }
}
