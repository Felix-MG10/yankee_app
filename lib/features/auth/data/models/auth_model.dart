// lib/features/auth/data/models/auth_model.dart
class AuthModel {
  final String phone;
  final String password;
  
  AuthModel({required this.phone, required this.password});
  
  Map<String, dynamic> toJson() => {
    'phone': phone,
    'password': password,
  };
}

// lib/features/auth/data/repositories/auth_repository_impl.dart
class AuthRepositoryImpl implements AuthRepository {
  final ApiService apiService;
  final SecureStorage secureStorage;
  
  @override
  Future<void> login(AuthModel authModel) async {
    final response = await apiService.post('/api/v1/client/login', authModel.toJson());
    await secureStorage.write('token', response['token']);
    await secureStorage.write('user_id', response['user_id']);
  }
}