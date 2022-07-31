import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/nave/appRouter.dart';
import 'package:flutter_application_1/regeister/RegistrScrean.dart';
import 'package:flutter_application_1/regeister/profilepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpHelper {
  SpHelper._(); //ما بقدر اعمل منها اوبجكت و حذفت الكونستركتر التلقائي

  static SpHelper spHelper = SpHelper._();
  //String? v;

  static SharedPreferences? sp;
  static Initsp() async {
    sp = await SharedPreferences.getInstance();
  }

  /* static writeOnSp(value) {
    if (value == null) {
      value = "hello new User";

      sp!.setString("name", value);
    } else {
      value = "hello old user";
      sp!.setString("name", value);
    }
  }

  static String? readFromSp() {
    String? a = sp!.getString("name");
    return a;
  }*/

  SavednewUser(
      String name, String email, String phone, String country, String city) {
    Map<String, dynamic> map = {
      "name": name,
      "email": email,
      "phone": phone,
      "country": country,
      "city": city,
    };

    String userdata = json.encode(map);
    sp!.setString("user", userdata);
  }

  getUser() {
    String? user = sp!.getString("user");
    if (user == null) {
      appRouter.NavigatorwithtoWidget(RegisterScreen());
    } else {
      appRouter.NavigatorwithtoWidget(profilepage());
    }
  }

  deleteUser() {}
}
