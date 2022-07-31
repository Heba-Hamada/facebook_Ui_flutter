import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sharedhelper/spHelper.dart';

class Sharedhelpeertest extends StatelessWidget {
  static String? content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test")),
      body: Column(
        children: [
          Text(content = "hello"),
          ElevatedButton(
              onPressed: () {
                //      SpHelper.writeOnSp(content);
              },
              child: Text("write here ")),
          ElevatedButton(
              onPressed: () {
                //      SpHelper.readFromSp();
              },
              child: Text("read here ")),
        ],
      ),
    );
  }
}
