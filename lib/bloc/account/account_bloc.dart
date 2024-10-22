import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const AccountState()) {
    on<AccountEvent>((event, emit) {});
    on<ToggleLoginAndSignUpEvent>(_toggleLoginAndSignUp);
    on<ResetLoginStateEvent>(_resetLoginState);
  }

  Future<void> _toggleLoginAndSignUp(
      ToggleLoginAndSignUpEvent event, Emitter<AccountState> emit) async {
    emit(state.copyWith(isLogin: event.isLogin));
  }

  Future<void> _resetLoginState(
      ResetLoginStateEvent event, Emitter<AccountState> emit) async {
    emit(state.copyWith(isLogin: true));
   
  }
}
