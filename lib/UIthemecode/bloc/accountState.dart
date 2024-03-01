import 'package:equatable/equatable.dart';

abstract class AccountState extends Equatable {
  const AccountState();

  @override
  List<Object?> get props => [];
}

class AccountInitial extends AccountState {}

class AccountAuthenticated extends AccountState {
  final String username;

  const AccountAuthenticated(this.username);

  @override
  List<Object?> get props => [username];
}

class AccountUnauthenticated extends AccountState {}