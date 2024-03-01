
import 'package:flutter_bloc/flutter_bloc.dart';
import 'accountEvent.dart';
import 'accountState.dart';



class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(AccountInitial());

  @override
  Stream<AccountState> mapEventToState(AccountEvent event) async* {
    if (event is AccountLoggedIn) {
      yield AccountAuthenticated(event.username);
    } else {
      yield AccountUnauthenticated();
    }
  }
}
