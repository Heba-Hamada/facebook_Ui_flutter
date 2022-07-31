import 'package:flutter/material.dart';
import 'package:flutter_application_1/Store_app/widgets/homeWidget.dart';

class HomestoreScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EFF1),
      appBar: homeAppbar(),
      body: homebody(),
    );
  }

  AppBar homeAppbar() {
    return AppBar(
        elevation: 0,
        title: Text(
          "مرحبا بكم في متجر الكترونيات",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
        centerTitle: false);
  }
}
