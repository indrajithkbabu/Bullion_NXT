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

class SetStoreName extends AccountEvent {
  SetStoreName({required this.storeName});
  final String storeName;
  @override
  List<Object> get props => [storeName];
}

class SetPhoneNumber extends AccountEvent {
  SetPhoneNumber({required this.phoneNumber});
  final String phoneNumber;
  @override
  List<Object> get props => [phoneNumber];
}

class SetPassword extends AccountEvent {
  SetPassword({required this.password});
  final String password;
  @override
  List<Object> get props => [password];
}

class SetCity extends AccountEvent {
  SetCity({required this.city});
  final String city;
  @override
  List<Object> get props => [city];
}

class RegisterUserEvent extends AccountEvent{
   @override
  List<Object> get props => [];
}

class LoginUserEvent extends AccountEvent{
   @override
  List<Object> get props => [];
}

class ClearDataEvent extends AccountEvent{
   @override
  List<Object> get props => [];
}