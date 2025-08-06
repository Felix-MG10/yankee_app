// lib/features/notifications/data/datasources/notification_remote_data_source.dart
class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  final ApiService apiService;
  final FirebaseMessaging firebaseMessaging;
  
  @override
  Future<void> setupPushNotifications() async {
    final permission = await firebaseMessaging.requestPermission();
    if (permission.authorizationStatus == AuthorizationStatus.authorized) {
      final token = await firebaseMessaging.getToken();
      await apiService.post('/api/v1/client/register-device', {'token': token});
    }
    
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Gérer la notification en foreground
    });
  }
}