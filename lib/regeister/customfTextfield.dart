import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  String title;
  TextEditingController controller;
  Function validator;
  TextInputType textInputType;
  Widget? suffex;

  CustomTextfield(
      this.title, this.validator, this.controller, this.textInputType,
      [this.suffex]);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: textInputType,
        controller: controller,
        validator: (x) => validator(x),
        decoration: InputDecoration(
            suffixIcon: suffex ?? SizedBox(), //????
            hintText: title,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
