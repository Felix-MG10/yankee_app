abstract class AuthRepository {
  Future<void> login(String phone, String password);
  Future<void> logout();
  Future<bool> isAuthenticated();
}