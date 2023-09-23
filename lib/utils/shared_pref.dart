import 'dart:convert';

import 'package:yboxv2/models/login_res.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yboxv2/resource/strings.dart';

class SharedPreferencesUtils {
  static Future clearLoginPreference() async {
    // _deleteCacheDir();
    // _deleteAppDir();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    return true;
  }

  static Future saveLoginPreference(LoginRes data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(preferenceToken, data.accessToken);
    prefs.setString(preferenceLoginData, jsonEncode(data));
  }

  static Future<LoginRes?> getUserPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var data = prefs.getString(preferenceLoginData);

    if (data != null) {
      LoginRes loginRes = LoginRes.fromJson(jsonDecode(data));
      return loginRes;
    } else {
      return null;
    }
  }

  static Future<String?> getLoginPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var data = prefs.getString(preferenceLoginData);
    return data;
  }
}
