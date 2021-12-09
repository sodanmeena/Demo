import 'dart:convert';

import 'package:flutter_dashboard_app/Controller/Login_Page/Login_Page/login_page.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:autologin/screens/home_screen.dart';
// import 'package:autologin/screens/login_screen.dart';

// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:zil_admin/Controller/Login_Page/login_page.dart';
// import 'package:zil_admin/pages/overview/overview.dart';

class AuthController {
  static login(Map userData) async {
    print(userData);

    var response = {"user_id": "31", "user_token": "QpwL5tke4Pnpja7X4"};
    var any = await SharedPreferences.getInstance();

    any.setString("userData", json.encode(response));
    // Get.off(OverViewPage());
  }

  Future<bool> tryAutoLogin() async {
    var any = await SharedPreferences.getInstance();
    if (!any.containsKey("userData")) {
      return false;
    } else {
      // final extractedUserData =
      //     json.decode(any.getString('userData').toString());

      // print(extractedUserData['user_id']);
      // print(extractedUserData['user_token']);

      return true;
    }
  }

  static logOut() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    // Get.off(() => LoginListHeader());
  }
}
