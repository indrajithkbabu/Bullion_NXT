import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bullionnxtnew/repositories/auth/auth_repository.dart';
import 'package:bullionnxtnew/storage/app_preferences.dart';
import 'package:bullionnxtnew/utils/string_utils.dart';
import 'package:equatable/equatable.dart';

part 'account_event.dart';
part 'account_state.dart';

//  LogInCubitImpl({required UserRepositoryImpl userRepositoryImpl})
//       : _userRepositoryImpl = userRepositoryImpl,
//         super(const LogInState());
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc({
    required AuthRepositoryImpl authRepositoryImpl,
  })  : _authRepositoryImpl = authRepositoryImpl,
        super(const AccountState()) {
    on<AccountEvent>((event, emit) {});
    on<ToggleLoginAndSignUpEvent>(_toggleLoginAndSignUp);
    on<ResetLoginStateEvent>(_resetLoginState);
    on<SetStoreName>(_setStoreName);
    on<SetPhoneNumber>(_setPhoneNumber);
    on<SetPassword>(_setPassword);
    on<SetCity>(_setCity);
    on<RegisterUserEvent>(_registerUser);
    on<LoginUserEvent>(_loginUser);
    on<ClearDataEvent>(_clearData);
  }
  //  final UserRepositoryImpl _userRepositoryImpl;
  final AuthRepositoryImpl _authRepositoryImpl;
  Future<void> _toggleLoginAndSignUp(
      ToggleLoginAndSignUpEvent event, Emitter<AccountState> emit) async {
    emit(state.copyWith(isLogin: event.isLogin));
  }

  Future<void> _resetLoginState(
      ResetLoginStateEvent event, Emitter<AccountState> emit) async {
    // emit(state.copyWith(isLogin: true));
    final token = await SecureStorageHelper.shared.getToken();

    if (token.isEmpty) {
      // Only reset the login state if the token is not present
      emit(state.copyWith(isLogin: true, hasToken: false));
    } else {
      // Optionally handle the case where the token is present
      emit(state.copyWith(
          isLogin: false, hasToken: true)); // Or some other logic
    }
  }

  FutureOr<void> _setStoreName(SetStoreName event, Emitter<AccountState> emit) {
    emit(state.copyWith(storeName: event.storeName));
  }

  FutureOr<void> _setPhoneNumber(
      SetPhoneNumber event, Emitter<AccountState> emit) {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  FutureOr<void> _setPassword(SetPassword event, Emitter<AccountState> emit) {
    emit(state.copyWith(password: event.password));
  }

  FutureOr<void> _setCity(SetCity event, Emitter<AccountState> emit) {
    emit(state.copyWith(city: event.city));
  }

  Future<void> _registerUser(
      RegisterUserEvent event, Emitter<AccountState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final response = await _authRepositoryImpl.signUpUser(
          storeName: state.storeName,
          phone: state.phoneNumber,
          password: state.password,
          city: state.city);
      if (response.status == 'success') {
        if (response.token != null) {
          await SecureStorageHelper.shared.setToken(response.token.toString());
          final token = await SecureStorageHelper.shared.getToken();

          emit(state.copyWith(hasToken: token.isNotEmpty));
        }
        // response.token
        emit(state.copyWith(
          isSignUpSuccess: true,
          successMessage: response.message,
          isLoading: false,
        ));
      } else {
        emit(state.copyWith(
          isSignUpError: true,
          errorMessage: response.message,
          isLoading: false,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        isSignUpError: true,
        errorMessage: handleError(e),
        isLoading: false,
      ));
    } finally {
      emit(
        state.copyWith(
          isLoading: false,
          isSignUpError: false,
          // isLoginAuth: false,
          errorMessage: '',
          isSignUpSuccess: false,
          successMessage: '',
        ),
      );
    }
  }

  Future<void> _loginUser(
      LoginUserEvent event, Emitter<AccountState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final response = await _authRepositoryImpl.loginUser(
        phone: state.phoneNumber,
        password: state.password,
      );
      if (response.status == 'success') {
        if (response.token != null) {
          await SecureStorageHelper.shared.setToken(response.token.toString());
          final token = await SecureStorageHelper.shared.getToken();

          emit(state.copyWith(hasToken: token.isNotEmpty));
        }
        // response.token
        emit(state.copyWith(
          isLoginSuccess: true,
          successMessage: response.message,
          isLoading: false,
        ));
      } else {
        emit(state.copyWith(
          isLoginError: true,
          errorMessage: response.message,
          isLoading: false,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        isLoginError: true,
        errorMessage: handleError(e),
        isLoading: false,
      ));
    } finally {
      emit(
        state.copyWith(
          isLoading: false,
          isLoginError: false,
          // isLoginAuth: false,
          errorMessage: '',
          isSignUpSuccess: false,
          successMessage: '',
        ),
      );
    }
  }

  FutureOr<void> _clearData(ClearDataEvent event, Emitter<AccountState> emit) {
    emit(const AccountState());
  }
}
