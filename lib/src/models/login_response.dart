
class LoginResponse {
  final bool success;
  final String? accessToken;
  final String? refreshToken;
  final String? error;

  LoginResponse({
    required this.success,
    this.accessToken,
    this.refreshToken,
    this.error,
  });
}
