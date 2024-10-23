// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'account_bloc.dart';

class AccountState extends Equatable {
  const AccountState({
    this.isLogin,
    this.isLoading = false,
    this.storeName = '',
    this.phoneNumber = '',
    this.password = '',
    this.city = '',
    this.isSignUpSuccess = false,
    this.isSignUpError = false,
    this.errorMessage = '',
    this.successMessage = '',
    this.hasToken = false,
    this.isLoginSuccess = false,
    this.isLoginError = false,
  });
  final bool? isLogin;
  final bool isLoading;
  final String storeName;
  final String phoneNumber;
  final String password;
  final String city;
  final bool isSignUpSuccess;
  final bool isSignUpError;
  final String errorMessage;
  final String successMessage;
  final bool hasToken;
  final bool isLoginSuccess;
  final bool isLoginError;
  @override
  List<Object?> get props => [
        isLogin,
        isLoading,
        storeName,
        phoneNumber,
        password,
        city,
        isSignUpSuccess,
        isSignUpError,
        errorMessage,
        successMessage,
        hasToken,
        isLoginSuccess,
        isLoginError,
      ];

  AccountState copyWith({
    bool? isLogin,
    bool? isLoading,
    String? storeName,
    String? phoneNumber,
    String? password,
    String? city,
    bool? isSignUpSuccess,
    bool? isSignUpError,
    String? errorMessage,
    String? successMessage,
    bool? hasToken,
    bool? isLoginSuccess,
    bool? isLoginError,
  }) {
    return AccountState(
      isLogin: isLogin ?? this.isLogin,
      isLoading: isLoading ?? this.isLoading,
      storeName: storeName ?? this.storeName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      city: city ?? this.city,
      isSignUpSuccess: isSignUpSuccess ?? this.isSignUpSuccess,
      isSignUpError: isSignUpError ?? this.isSignUpError,
      errorMessage: errorMessage ?? this.errorMessage,
      successMessage: successMessage ?? this.successMessage,
      hasToken: hasToken ?? this.hasToken,
      isLoginSuccess: isLoginSuccess ?? this.isLoginSuccess,
      isLoginError: isLoginError ?? this.isLoginError,
    );
  }
}
