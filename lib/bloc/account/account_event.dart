part of 'account_bloc.dart';

abstract class AccountEvent extends Equatable {}

class ToggleLoginAndSignUpEvent extends AccountEvent {
  ToggleLoginAndSignUpEvent({required this.isLogin});
  final bool isLogin;
  @override
  List<Object> get props => [isLogin];
}

class ResetLoginStateEvent extends AccountEvent {
  ResetLoginStateEvent();

  @override
  List<Object> get props => [];
}
