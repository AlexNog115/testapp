
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testapp/src/models/login_response.dart';
import 'package:testapp/src/utils/secure_storage.dart';

class AuthService {
  final _secureStorage = SecureStorage();

  Future<LoginResponse> signIn(String email, String password) async {
    final url = Uri.parse('http://localhost:8000/api/auth/login');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'username': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final accessToken = data['access_token'];
        final refreshToken = data['refresh_token'];

        await _secureStorage.write('access_token', accessToken);
        await _secureStorage.write('refresh_token', refreshToken);

        return LoginResponse(success: true, accessToken: accessToken, refreshToken: refreshToken);
      } else {
        return LoginResponse(success: false, error: 'Invalid credentials');
      }
    } catch (e) {
      return LoginResponse(success: false, error: e.toString());
    }
  }

  Future<void> signOut() async {
    await _secureStorage.delete('access_token');
    await _secureStorage.delete('refresh_token');
  }

  Future<bool> isLoggedIn() async {
    final token = await _secureStorage.read('access_token');
    return token != null;
  }
}
