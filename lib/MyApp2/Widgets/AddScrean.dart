import 'package:flutter/material.dart';

class AddNewMedicine extends StatefulWidget {
  AddNewMedicine({Key? key}) : super(key: key);

  @override
  State<AddNewMedicine> createState() => _AddNewMedicineState();
}

class _AddNewMedicineState extends State<AddNewMedicine> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false, //????????
      backgroundColor: Colors.white10,
      body: SafeArea(
          child: Padding(
        padding:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0, bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              child: FittedBox(
                //???
                child: InkWell(
                  child: Icon(Icons.arrow_back),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0),
              height: 80,
              child: FittedBox(
                  child: Text(
                "Add Pills",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: Colors.black),
              )),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      )),
    );
  }
}
