import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyApp2/Themes.dart';
import 'package:flutter_application_1/MyApp2/try/MyButton.dart';
import 'package:flutter_application_1/MyApp2/try/addTaskBar.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class H1 extends StatefulWidget {
  const H1({Key? key}) : super(key: key);

  @override
  State<H1> createState() => _H1State();
}

class _H1State extends State<H1> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, //???????//
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
                isDarkMode.value ? Icons.wb_sunny_outlined : Icons.nightlight,
                size: 20,
                color: isDarkMode.value ? Colors.white : Colors.black)),
      ),
      body: Column(
        children: [
          _addTaskBar(),
          _addDateBar(),
        ],
      ),
    );
  }

  Container _addDateBar() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      child: DatePicker(
          //liblary date_picker_timeLine
          DateTime.now(),
          height: 100,
          width: 80,
          initialSelectedDate: DateTime.now(),
          selectionColor: Color(0xFF4e5ae8),
          selectedTextColor: Colors.white,
          dateTextStyle: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.grey),
          dayTextStyle: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),
          monthTextStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey), onDateChange: (date) {
        _selectedDate = date;
      }),
    );
  }

  Row _addTaskBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat.yMMMEd().format(DateTime.now()),
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode.value ? Colors.grey : Colors.grey),
              ), //liblary initl

              Text("Today",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: isDarkMode.value ? Colors.white : Colors.black)),
              MyButton(
                label: "+ Add",
                onTap: () {
                  return Get.to(AddtaskPage());
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
