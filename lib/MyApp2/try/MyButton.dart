import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  MyButton({ required  this.label,required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xFF4e5ae8)),
        child: Text(label,style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
