import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sharedhelper/spHelper.dart';

class slectedcountry extends StatelessWidget {
  const slectedcountry({Key? key}) : super(key: key);
  initfunction() async {
    await Future.delayed(Duration(seconds: 3)); //بتعمل تاخير 3 ث
    SpHelper.spHelper.getUser();
  }

  @override
  Widget build(BuildContext context) {
    initfunction();

    return Scaffold(
      body: Container(
        child: FlutterLogo(),
      ),
    );
  }
}
