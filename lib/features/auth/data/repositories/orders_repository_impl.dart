import 'package:yankee_app/core/network/api_service.dart';
import 'package:yankee_app/features/auth/domain/repositories/orders_repository.dart';

class OrdersRepositoryImpl extends OrdersRepository {
  final ApiService apiService;

  OrdersRepositoryImpl({required this.apiService});

  @override
  Future<List<dynamic>> getOrders(String userId) async {
    final response = await apiService.get('/api/v1/client/orders/$userId');
    return response as List<dynamic>;
  }

  @override
  Future<dynamic> getOrderDetails(String userId, String orderId) async {
    final response = await apiService.get('/api/v1/client/order/$userId/$orderId');
    return response;
  }

  @override
  Future<dynamic> placeOrder(String userId, dynamic orderData) async {
    final response = await apiService.post('/api/v1/client/order/$userId', orderData);
    return response;
  }

  @override
  Future<dynamic> updateOrder(String userId, String orderId, dynamic orderData) async {
    final response = await apiService.put('/api/v1/client/order/$userId/$orderId', orderData);
    return response;
  }

  @override
  Future<dynamic> cancelOrder(String userId, String orderId) async {
    final response = await apiService.delete('/api/v1/client/order/$userId/$orderId');
    return response;
  }

}
