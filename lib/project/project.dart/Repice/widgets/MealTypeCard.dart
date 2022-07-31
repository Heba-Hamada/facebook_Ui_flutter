import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealTypeCarde extends StatelessWidget {
  String? title;
  IconData? icon;
  MealTypeCarde(this.title, this.icon);

  /*MealTypeCarde.fromJson(Map<String, dynamic> data) {
    this.title = data["title"];
        this.icon = data["icon"];

  }*/
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      color: Colors.white,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            this.icon,
            color: Theme.of(context).primaryColor,
            size: 50,
          ),
          Text(
            title!,
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
