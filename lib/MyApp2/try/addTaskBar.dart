import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyApp2/try/inputfield.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class AddtaskPage extends StatefulWidget {
  AddtaskPage({Key? key}) : super(key: key);

  @override
  State<AddtaskPage> createState() => _AddtaskPageState();
}

class _AddtaskPageState extends State<AddtaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0, //???????//
        leading: GestureDetector(
          onTap: () {
            Get.back(); //make nav more easly
          },
          child: Icon(Icons.arrow_back,
              //isDarkMode.value ? Icons.wb_sunny_outlined : Icons.nightlight,
              size: 20,
              color: isDarkMode.value ? Colors.white : Colors.black),
        ),
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Add ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode.value ? Colors.white : Colors.black)),
            InputField(title: "nema ", hint: "enter the name ")
          ],
        ),
      )),
    );
  }
}
