abstract class OrdersRepository {
  Future<List<dynamic>> getOrders(String userId);
  Future<dynamic> getOrderDetails(String userId, String orderId);
}