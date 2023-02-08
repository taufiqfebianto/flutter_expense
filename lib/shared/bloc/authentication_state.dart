part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationAuthenticated extends AuthenticationState {
  const AuthenticationAuthenticated();
  @override
  List<Object> get props => [];

  @override
  String toString() => 'AuthenticationAuthenticated';
}

class AuthenticationUnauthenticated extends AuthenticationState {
  const AuthenticationUnauthenticated();
  @override
  List<Object> get props => [];

  @override
  String toString() => 'AuthenticationUnauthenticated';
}

class FailedState extends AuthenticationState {
  @override
  List<Object> get props => [];

  @override
  String toString() => 'FailedState';
}
