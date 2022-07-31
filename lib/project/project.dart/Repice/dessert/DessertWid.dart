import 'package:flutter/material.dart';
import 'package:flutter_application_1/project.dart/Repice/dessert/Dessertwidbody.dart';

class Dessertwid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 190, 57),
      appBar: DessertwidAppbar(),
      body: Dessertwidbody(),
    );
  }

  AppBar DessertwidAppbar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 238, 190, 57),
      title: Text(
        "Dessert Recipes",
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
