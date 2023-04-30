import 'package:shared_preferences/shared_preferences.dart';

///
/// Created by Auro on 01/05/23 at 12:54 AM
///


class SharedPreferenceHelper {
  static const ACCESS_TOKEN_KEY = 'accessToken';

  static SharedPreferences? preferences;

  static void storeAccessToken(String accessToken) {
    preferences?.setString(ACCESS_TOKEN_KEY, accessToken);
  }

  static String? get accessToken => preferences?.getString(ACCESS_TOKEN_KEY);

  static void clear() {
    preferences?.clear();
  }

  static void logout() {
    preferences?.remove(ACCESS_TOKEN_KEY);
  }
}
