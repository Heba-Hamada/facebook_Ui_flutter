import 'package:flutter/material.dart';

class homebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
              Container(
                height: 190,
                color: Color.fromARGB(141, 0, 146, 5),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Stack(
                  children: [],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
