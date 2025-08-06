import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  
  const ApiService(this.dio);
  
  Future<dynamic> get(String endpoint) async {
    try {
      final response = await dio.get(endpoint);
      return response.data;
    } on DioException catch (e) {
      throw Exception('Erreur API: ${e.message}');
    }
  }
  
  Future<dynamic> post(String endpoint, dynamic data) async {
    try {
      final response = await dio.post(endpoint, data: data);
      return response.data;
    } on DioException catch (e) {
      throw Exception('Erreur API: ${e.message}');
    }
  }
}