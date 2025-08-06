import 'package:dio/dio.dart';

class DioClient {
  static Dio createDio() {
    final dio = Dio(BaseOptions(
      baseUrl: 'https://api.yankee.sn',
      connectTimeout: const Duration(seconds: 30),
    ));
    
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Ajouter le token d'authentification si disponible
        return handler.next(options);
      },
    ));
    
    return dio;
  }
}