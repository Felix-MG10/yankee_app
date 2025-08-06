import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  
  ApiService(this.dio);
  
  Future<dynamic> post(String endpoint, dynamic data) async {
    final response = await dio.post(endpoint, data: data);
    return response.data;
  }
  
  Future<dynamic> get(String endpoint) async {
    final response = await dio.get(endpoint);
    return response.data;
  }
}