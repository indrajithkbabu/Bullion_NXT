import 'package:bullionnxtnew/models/login/login_response_model.dart';
import 'package:bullionnxtnew/models/signUp/sign_up_response_model.dart';
import 'package:bullionnxtnew/repositories/auth/auth_request.dart';

abstract class AuthRepository {
  Future<SignUpResponseModel> signUpUser(
      {required String storeName,
      required String phone,
      required String password,
      required String city});
  Future<LoginResponseModel> loginUser({
    required String phone,
    required String password,
  });
}

class AuthRepositoryImpl extends AuthRepository {
  final AuthRequest _authRequest = AuthRequest();

  @override
  Future<SignUpResponseModel> signUpUser(
      {required String storeName,
      required String phone,
      required String password,
      required String city}) async {
    return await _authRequest.signUpUser(
        storeName: storeName, phone: phone, password: password, city: city);
  }

  @override
  Future<LoginResponseModel> loginUser(
      {required String phone, required String password}) async {
    return await _authRequest.loginUser(phone: phone, password: password);
  }
}
