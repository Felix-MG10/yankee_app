import 'package:yankee_app/core/network/api_service.dart';
import 'package:yankee_app/core/utils/secure_storage.dart';
import 'package:yankee_app/features/auth/data/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiService apiService;
  final SecureStorage secureStorage;

  AuthRepositoryImpl({required this.apiService, required this.secureStorage});

  @override
  Future<void> login(String phone, String password) async {
    final response = await apiService.post(
      '/api/v1/client/login',
      {'phone': phone, 'password': password},
    );
    
    await secureStorage.write('token', response['token']);
    await secureStorage.write('user_id', response['user_id']);
  }

  @override
  Future<void> logout() async {
    await secureStorage.delete('token');
    await secureStorage.delete('user_id');
  }

  @override
  Future<bool> isAuthenticated() async {
    final token = await secureStorage.read('token');
    return token != null;
  }
}