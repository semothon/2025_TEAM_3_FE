import 'package:get/get.dart';
import 'package:team_3_frontend/data/models/study_group.dart';
import 'package:team_3_frontend/data/services/api_service.dart';


class ExploreController extends GetxController {
  final ApiService _apiService = ApiService();

  var studyList = <RecommendedGroup>[].obs;
  var isLoading = false.obs;

  RxString selectedCategory = '스터디'.obs;

  @override
  void onInit() {
    super.onInit();
    fetchRecommendedStudies();
  }

  void selectCategory(String category) {
    selectedCategory.value = category;
    // 이후 카테고리별 필터 적용 시 로직 추가 가능
  }

  Future<void> fetchRecommendedStudies() async {
    try {
      isLoading(true);
      final data = await _apiService.fetchDiscoverGroups();
      print('받아온 스터디 개수: ${data.length}'); // 👉 여기 추가
      studyList.assignAll(data as Iterable<RecommendedGroup>);
    } catch (e) {
      print('스터디 불러오기 오류: $e');
    } finally {
      isLoading(false);
    }
  }
}
