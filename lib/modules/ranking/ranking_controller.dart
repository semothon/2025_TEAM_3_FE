import 'package:get/get.dart';
import '../../data/services/api_service.dart';
import '../../data/models/rank.dart';

class RankingController extends GetxController {
  final ApiService apiService = ApiService();

  Future<Map<String, List<Rank>>> fetchRankingData() async {
    return await apiService.fetchRanking();
  }
}
