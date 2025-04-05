import 'dart:io';

import 'package:get/get.dart';
import 'package:team_3_frontend/data/models/group_detail.dart';
import 'package:team_3_frontend/data/models/home.dart';
import 'package:team_3_frontend/data/services/auth_service.dart';
import '../../utils/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:http_parser/http_parser.dart';
import 'package:team_3_frontend/data/models/study_group.dart';

import '../models/rank.dart';
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
      print(data);
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

  /// ✅ 기록 생성
  Future<dynamic> createRecord({
    required String groupId,
    required bool isShared,
    required String title,
    required String content,
    required List<File> images,
  }) async {
    final url = Uri.parse("$baseUrl/records/$groupId/createRecord");
    String? accessToken = Get.find<AuthService>().token;

    final request = http.MultipartRequest("POST", url);
    request.headers.addAll(_authHeaders(accessToken!));

    request.fields["is_shared"] = isShared.toString();
    request.fields["title"] = title;
    request.fields["content"] = content;

    for (File image in images) {
      final stream = http.ByteStream(image.openRead());
      final length = await image.length();
      final mimeType = "image/${image.path.split('.').last}";
      request.files.add(http.MultipartFile(
        "files",
        stream,
        length,
        filename: image.path.split("/").last,
        contentType: MediaType.parse(mimeType),
      ));
    }

    final response = await http.Response.fromStream(await request.send());

    final data = jsonDecode(response.body);

    if (data['error'] != null) {
      throw data['error'];
    }
  }

  Future<Map<String, List<Rank>>> fetchRanking() async {
    final url = Uri.parse("$baseUrl/ranking");
    String? accessToken = Get.find<AuthService>().token;

    final response = await http.get(
      url,
      headers: _authHeaders(accessToken!),
    );

    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return {
        'myGroups':
            List<Rank>.from(data['myGroups'].map((g) => Rank.fromJson(g))),
        'studyRanking':
            List<Rank>.from(data['studyRanking'].map((g) => Rank.fromJson(g))),
        'clubRanking':
            List<Rank>.from(data['clubRanking'].map((g) => Rank.fromJson(g))),
      };
    } else {
      if (data['error'] != null) {
        throw data['error'];
      }
      throw '서버와의 연결이 원활하지 않습니다.';
    }
  }

  Future<List<RecommendedGroup>> fetchDiscoverGroups() async {
    final url = Uri.parse("$baseUrl/discover");
    final token = Get.find<AuthService>().token;

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List groups = data['groups'];
      return groups
          .map((e) => RecommendedGroup.fromJson(e))
          .toList(); // ✅ 타입 맞춤
    } else {
      throw Exception("추천 스터디 불러오기 실패");
    }
  }

  Future<List<RecommendedGroup>> searchGroups(Map<String, String> query) async {
    final token = Get.find<AuthService>().token;
    final uri = Uri.parse("$baseUrl/search").replace(queryParameters: query);

    final response = await http.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List groups = data['groups'];
      return groups.map((e) => RecommendedGroup.fromJson(e)).toList();
    } else {
      throw Exception("검색 실패");
    }
  }

  /// ✅ 헤더 정보
  Map<String, String> _authHeaders(String accessToken) => {
        "Content-Type": "application/json",
        "Authorization": "Bearer $accessToken",
      };
}
