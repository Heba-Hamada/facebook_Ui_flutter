import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/project.dart/Data/breackfastdata.dart';
import 'package:flutter_application_1/project.dart/Repice/breakfact/breakfastcard.dart';
import 'package:flutter_application_1/project.dart/Repice/breakfact/detailes/detailes_Screan.dart';

class breakfastbody extends StatelessWidget {
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
//1-----------------------
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
            //2=========================
            //هادي الشريحة الي فيها الوصفة و الصورة تعتها
            ListView.builder(
              itemCount: breakfasts.length,
              itemBuilder: (context, index) =>
                  breackfastcard(breakfasts[index], index, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => detailesScrean(0),
                  ),
                );
              }),
            ),
          ],
        ))
      ],
    ));
  }
}
