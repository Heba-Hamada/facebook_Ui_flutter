import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  String title;
  String hint;
  TextEditingController? controller;
  Widget? widget;
  InputField(
      {required this.title, required this.hint, this.controller, this.widget});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
