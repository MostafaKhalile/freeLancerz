import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import '../../config/utils/api_client.dart';
import '../../config/utils/end_points.dart';
import '../../config/utils/prefs.dart';
import '../../config/utils/prefs_keys.dart';
import '../../data/models/user.dart';

class LoginService {
  Future<User> login({
    required String email,
    required String password,
  }) async {
    final res = await Api.post(
      EndPoints.login,
      attachToken: false,
      body: {
        'email': email,
        'password': password,
      },
    );

    if (res.statusCode != HttpStatus.ok) {
      throw res.data['message'] ?? res.data;
    }

    log('Logged in user model  $res');
    Prefs.setString(PrefsKeys.token, res.data['access_token']);

    Prefs.setString(PrefsKeys.userName, res.data['user_name']);

    return User.fromJson(json.encode(res.data).toString());
  }
}
