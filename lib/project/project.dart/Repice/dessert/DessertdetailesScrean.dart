import 'package:flutter/material.dart';
import 'package:flutter_application_1/project.dart/Repice/dessert/detailesBody.dart';

class DessertdetailesScrean extends StatelessWidget {
  const DessertdetailesScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: detailesAppbar(context),
      body: detailesBody(
          "https://media.istockphoto.com/photos/omelet-picture-id685775630?b=1&k=20&m=685775630&s=170667a&w=0&h=ilwsFjFIak3RyyJVpLT8LHZDi6FTB9GvgKrmzQVKLho="),
    );
  }

  AppBar detailesAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 248, 186, 207),
      leading: IconButton(
          padding: EdgeInsets.only(
            right: 20,
          ),

          //رجعني ع القائمة الرئيسية
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 241, 143, 176),
          )),
      title: Text(
        "back",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
