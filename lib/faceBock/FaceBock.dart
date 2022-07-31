import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/faceBockdata.dart';
import 'package:flutter_application_1/faceBock/faceBockWedgit.dart';

class FaceBock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          /*   SizedBox(
            height: 100,
           child: ListView.builder(
              itemCount: postfaceBock.length,
              itemBuilder: (context, index) {
                return 
              },
            ),
          ),*/
          Expanded(
            child: ListView.builder(
                itemCount: postfaceBock.length,
                itemBuilder: (context, index) {
                  return faceBockWedgit(
                      postfaceBock[index].user!, postfaceBock[index].post!);
                }),
          ),
        ],
      ),
    );
  }
}
