import 'package:flutter/material.dart';
import 'package:flutter_application_1/project.dart/Data/breackfastdata.dart';
import 'package:flutter_application_1/project.dart/Repice/breakfact/detailes/detailes_body.dart';

class detailesScrean extends StatelessWidget {
  int index = 0;
  detailesScrean(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: detailesAppbar(context),
      body: detailesBody(breakfast(breakfasts[index].title,
          breakfasts[index].sutitle, breakfasts[index].image)),
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
