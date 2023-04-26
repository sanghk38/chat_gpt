import 'package:chat_gpt/core/local_storage/secure_storage.dart';
import 'package:chat_gpt/core/local_storage/secure_storage_keys.dart';
import 'package:chat_gpt/core/local_storage/shared_prefs.dart';

import '../../di/injection.dart';

class SessionManager{
  static final instance = SessionManager._();

  SessionManager._();

  SecureStorage secureStorage = getIt<SecureStorage>();
  SharedPrefs preferences = getIt<SharedPrefs>();

  bool? get isDarkMode =>
      preferences.getData<bool>(SecureStorageKeys.themeMode);

  Future<void> setIsDarkMode(bool val) async {
    return await preferences.saveData<bool>(
      SecureStorageKeys.themeMode,
      val,
    );
  }
  String? get cacheThemeModeName =>
      preferences.getData<String>(SecureStorageKeys.themeModeName);

  Future<void> setCacheThemeModeName(String themeModeName) async {
    return await preferences.saveData<String>(
      SecureStorageKeys.themeModeName,
      themeModeName,
    );
  }
}