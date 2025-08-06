part of 'auth_bloc.dart';

abstract class AuthState {
  const AuthState();
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AuthState && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class Authenticated extends AuthState {}

class AuthError extends AuthState {
  final String message;

  const AuthError(this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AuthError && message == other.message;
  }

  @override
  int get hashCode => message.hashCode;
}