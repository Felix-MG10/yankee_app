part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AuthEvent && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;
}

class LoginRequested extends AuthEvent {
  final String phone;
  final String password;

  const LoginRequested({required this.phone, required this.password});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LoginRequested && 
           phone == other.phone && 
           password == other.password;
  }

  @override
  int get hashCode => phone.hashCode ^ password.hashCode;
}