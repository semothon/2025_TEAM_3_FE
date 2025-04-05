import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/data/services/api_service.dart';

class AuthService extends GetxController {
  FlutterSecureStorage _storage = FlutterSecureStorage();
  ApiService _apiService = ApiService();

  // 토큰
  String? token;
  // 유저 정보
  Map<String, dynamic>? userInfo;

  @override
  Future<void> onInit() async {
    super.onInit();
    await getToken();
  }

  // 토큰 가져오기
  getToken() async {
    token = await _storage.read(key: 'token');
    print(token);
  }

  // 토큰 저장하기
  saveToken(String token) async {
    await _storage.write(key: 'token', value: token);
    this.token = token;
  }

  // 토큰 삭제하기
  deleteToken() async {
    await _storage.delete(key: 'token');
    token = null;
  }
}
