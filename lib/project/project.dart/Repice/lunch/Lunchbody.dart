import 'package:flutter/material.dart';
import 'package:flutter_application_1/project.dart/Data/Lunchdata.dart';
import 'package:flutter_application_1/project.dart/Repice/lunch/detailesScrean.dart';
import 'package:flutter_application_1/project.dart/Repice/lunch/lunchcard.dart';

class lunchbody extends StatelessWidget {
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
              itemCount: lunchdatas.length,
              itemBuilder: (context, index) =>
                  lunchcard(lunchdatas[index], index, () {
                // detailesScrean();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => detailesScrean(),
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
