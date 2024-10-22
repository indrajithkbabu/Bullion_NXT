// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'account_bloc.dart';

class AccountState extends Equatable {
  const AccountState({this.isLogin,this.isLoading=false});
  final bool? isLogin;
  final bool? isLoading;
  @override
  List<Object?> get props => [isLogin,isLoading];

  AccountState copyWith({
    bool? isLogin,
    bool? isLoading,
  }) {
    return AccountState(
      isLogin: isLogin ?? this.isLogin,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}


