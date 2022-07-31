import 'package:flutter/material.dart';

class appRouter {
  static GlobalKey<NavigatorState> navkey = GlobalKey();
  static NavigatortoWidget(Widget widget) async {
    String? x = await Navigator.of(navkey.currentContext!)
        .push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  static NavigatorwithtoWidget(Widget widget) async {
    String? x = await Navigator.of(navkey.currentContext!)
        .pushReplacement(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }
}
