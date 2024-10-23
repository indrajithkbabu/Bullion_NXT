
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHelper {
  SecureStorageHelper._privateConstructor();
  static final SecureStorageHelper shared =
      SecureStorageHelper._privateConstructor();

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  final storage = const FlutterSecureStorage();

  Future<void> setToken(String token) async {
    debugPrint(token);
    await storage.write(
      key: 'token',
      value: token,
      // aOptions: _getAndroidOptions(),
    );
  
  }

  Future<void> removeToken() async {
    await storage.delete(key: 'token', aOptions: _getAndroidOptions());
  }

  Future<String> getToken() async {
    final token = await storage.read(key: 'token');
    return token ?? '';
  }
}