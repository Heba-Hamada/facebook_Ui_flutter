import 'package:flutter/material.dart';

class pathNotFound extends StatelessWidget {
  String title;
  pathNotFound(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Text("the path not found $title"),
    );
  }
}
