import 'package:flutter/material.dart';
import 'package:flutter_application_1/project.dart/Repice/lunch/Lunchbody.dart';

class LunchWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 179, 241, 78),
      appBar: BreakfastAppbar(),
      body: lunchbody(),
    );
  }

  AppBar BreakfastAppbar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 179, 241, 78),
      title: Text(
        "lunch Recipes",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        )
      ],
    );
  }
}
