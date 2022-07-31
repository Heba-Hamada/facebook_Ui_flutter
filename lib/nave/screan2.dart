import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screan2 extends StatelessWidget {
  String screanNamed = "screan2";
  String title;
  Screan2(this.title);

  @override
  Widget build(BuildContext context) {
    String? x = ModalRoute.of(context)?.settings.arguments as String;

    return WillPopScope(
      onWillPop: () {
        if (Navigator.canPop(context)) {
          return Future.value(true);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Screan2"),
        ),
        body: Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("go back")),
        ),
      ),
    );
  }
}
