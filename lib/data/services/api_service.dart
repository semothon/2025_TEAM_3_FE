import 'package:get/get.dart';
import 'package:team_3_frontend/data/services/auth_service.dart';

import '../../utils/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String baseUrl = Constants.apiUrl; // 서버 URL
  AuthService _authService = Get.find();

  /// ✅ 로그인
  Future login(String loginId, String password) async {
    final url = Uri.parse("$baseUrl/login");
    // 요청
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        "login_id": loginId,
        "password": password,
      }),
    );

    // 응답
    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      await _authService.saveToken(data['token']);
    } else {
      if (data['error'] != null) {
        throw data['error'];
      }
    }
  }

  /// ✅ 헤더 정보
  Map<String, String> _authHeaders(String accessToken) => {
        "Content-Type": "application/json",
        "Authorization": "Bearer $accessToken",
      };
}
