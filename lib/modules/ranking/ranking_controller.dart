import 'package:get/get.dart';
import '../../data/services/api_service.dart';
import '../../data/models/rank.dart';

class RankingController extends GetxController {
  final ApiService apiService = ApiService();

  Future<Map<String, List<Rank>>> fetchRankingData() async {
    print('data: ${await apiService.fetchRanking()}');
    return await apiService.fetchRanking();
  }
}
