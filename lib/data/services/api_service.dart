import 'package:get/get.dart';
import 'package:team_3_frontend/data/models/group_detail.dart';
import 'package:team_3_frontend/data/models/home.dart';
import 'package:team_3_frontend/data/services/auth_service.dart';
import '../../utils/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/user.dart';

class ApiService {
  final String baseUrl = Constants.apiUrl; // 서버 URL

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
      await Get.find<AuthService>().saveToken(data['token']);
    } else {
      if (data['error'] != null) {
        throw data['error'];
      }
    }
  }

  /// ✅ 회원가입
  Future register({
    String name = '',
    String email = '',
    String password = '',
    String loginId = '',
    List<String> hobby = const [],
    List<String> interest = const [],
    String department = '',
    List<String> timetable = const [],
  }) async {
    final url = Uri.parse("$baseUrl/register");
    // 요청
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        "name": name,
        "email": email,
        "password": password,
        "login_id": loginId,
        "hobby": hobby,
        "interest": interest,
        "department": department,
        "timetable": timetable,
      }),
    );

    // 응답
    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      await Get.find<AuthService>().saveToken(data['token']);
    } else {
      if (data['error'] != null) {
        throw data['error'];
      }
    }
  }

  /// 마이페이지 조회
  Future<Map<String, dynamic>> fetchMyPage(String token) async {
    final url = Uri.parse("$baseUrl/mypage");
    final response = await http.get(
      url,
      headers: _authHeaders(token),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('마이페이지 조회 실패: ${response.body}');
    }
  }

  /// ✅ 본인 정보 가져오기
  Future<User> getUserInfo() async {
    final url = Uri.parse("$baseUrl/mypage");
    String? accessToken = Get.find<AuthService>().token;
    // 요청
    final response = await http.get(
      url,
      headers: _authHeaders(accessToken!),
    );

    // 응답
    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return User.fromJson(data['myInfo']);
    } else {
      if (data['error'] != null) {
        throw data['error'];
      }
      throw '서버와의 연결이 원활하지 않습니다.';
    }
  }

  /// ✅ 홈
  Future<Home> home() async {
    final url = Uri.parse("$baseUrl/home");
    String? accessToken = Get.find<AuthService>().token;
    // 요청
    final response = await http.get(
      url,
      headers: _authHeaders(accessToken!),
    );

    // 응답
    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return Home.fromJson(data);
    } else {
      if (data['error'] != null) {
        throw data['error'];
      }
      throw '서버와의 연결이 원활하지 않습니다.';
    }
  }

  /// ✅ 그룹디테일
  Future<GroupDetail> groupDetails(String groupId) async {
    final url = Uri.parse("$baseUrl/groups/$groupId");
    String? accessToken = Get.find<AuthService>().token;
    // 요청
    final response = await http.get(
      url,
      headers: _authHeaders(accessToken!),
    );

    // 응답
    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return GroupDetail.fromJson(data);
    } else {
      if (data['error'] != null) {
        throw data['error'];
      }
      throw '서버와의 연결이 원활하지 않습니다.';
    }
  }

  /// ✅ 헤더 정보
  Map<String, String> _authHeaders(String accessToken) => {
        "Content-Type": "application/json",
        "Authorization": "Bearer $accessToken",
      };
}
