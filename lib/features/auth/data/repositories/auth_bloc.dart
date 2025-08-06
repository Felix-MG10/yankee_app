import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:yankee_app/features/auth/data/repositories/auth_repository.dart';


abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const UnauthorizedState()) {
    on<AuthEvent>((event, emit) {
      // Gestion des événements d'authentification
    });
  }
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class UnauthorizedState extends AuthState {
  const UnauthorizedState();
}
