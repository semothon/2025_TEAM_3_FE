import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class AuthService extends GetxController {
  FlutterSecureStorage _storage = FlutterSecureStorage();
  String? token;

  @override
  Future<void> onInit() async {
    super.onInit();
    await getToken();
  }

  // 토큰 가져오기
  getToken() async {
    token = await _storage.read(key: 'token');
  }

  // 토큰 저장하기
  saveToken(String token) async {
    await _storage.write(key: 'token', value: token);
    this.token = token;
  }
}
