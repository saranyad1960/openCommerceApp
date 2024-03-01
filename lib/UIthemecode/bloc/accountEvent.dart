import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AccountEvent extends Equatable {
  const AccountEvent();

  @override
  List<Object?> get props => [];
}


class AccountLoggedIn extends AccountEvent {
  final String username;

  const AccountLoggedIn(this.username);

  @override
  List<Object?> get props => [username];
}
