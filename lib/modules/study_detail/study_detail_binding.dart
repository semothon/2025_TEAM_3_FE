import 'package:get/get.dart';
import 'package:team_3_frontend/modules/study_detail/study_detail_controller.dart';

class StudyDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StudyDetailController>(() => StudyDetailController(),
        fenix: true);
  }
}
