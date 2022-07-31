import 'package:flutter/material.dart';
import 'package:flutter_application_1/project.dart/Repice/breakfact/breakfastbody.dart';

class breakfastWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 78, 133),
      appBar: BreakfastAppbar(),
      body: breakfastbody(),
    );
  }

  AppBar BreakfastAppbar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 241, 78, 133),
      title: Text(
        "Breakfast Recipes",
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
