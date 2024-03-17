part of 'auth_cubit.dart';

@immutable
sealed class AuthenticationState {}

final class AuhtInitial extends AuthenticationState {
  final bool success;

  AuhtInitial({required this.success});
}

final class AuthLoading extends AuthenticationState {}
