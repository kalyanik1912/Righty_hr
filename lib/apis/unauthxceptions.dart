import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/home/DashboardScreen.dart';
import '../utils/shared_preferences_helper.dart';
import '../utils/strings.dart';

class UnAuthExceptions {
  static logOutUser(context, code) async {
    bool isUserLoggedIn = await SharedPreferencesHelper.containKey('id');
    if (isUserLoggedIn) {
      String id = await SharedPreferencesHelper.getStringPreference('id');
      var body = {
        "userId": id,
        "data": {"fcmToken": ""}
      };
      // var res = await ApiService.updateUserDataById(body, context);
      // if (res.type == Strings.success) {}
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      // prefs.clear();
      prefs.remove(Strings.id);
      prefs.remove(Strings.access_token);
      prefs.remove(Strings.personal_info);
      prefs.remove('activePage');

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => DashboardScreen(),
        ),
        (route) => false,
      );
    } else {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      // prefs.clear();
      prefs.remove(Strings.id);
      prefs.remove(Strings.access_token);
      prefs.remove(Strings.personal_info);
      prefs.remove('activePage');
    }
  }
}
