import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/nave/appRouter.dart';
import 'package:flutter_application_1/nave/screan2.dart';
import 'package:flutter_application_1/project/mainpro.dart';

class Screan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (Navigator.canPop(context)) {
          return Future.value(true);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text("Screan1")),
        body: Container(
          child: ElevatedButton(
              onPressed: () {
                //  Navigator.push(context,
                //   MaterialPageRoute(builder: ((context) => Screan2(""))));
                Navigator.pushNamed(appRouter.navkey.currentContext!, "heba",
                    arguments: " hello ");
              },
              child: Text("go to screan2")),
        ),
      ),
    );
  }
}
