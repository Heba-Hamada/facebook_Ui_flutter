import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/project/mainpro.dart';

class changedrower extends StatefulWidget {
  changedrower({Key? key}) : super(key: key);

  @override
  State<changedrower> createState() => _changedrowerState();
}

class _changedrowerState extends State<changedrower> {
  int index = 0;
  String content = "hello";
  changeContentfromdrower(int i) {
    index = i;
    if (i == 0) {
      content = "الرئيسية";
    } else if (i == 1) {
      content = "المفضلة";
    } else if (i == 2) {
      content = "profile";
    }
    setState(() {});
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
