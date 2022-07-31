import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyApp2/Constant.dart';
import 'package:flutter_application_1/MyApp2/platform_button.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  void goToAddScrean() =>
      Navigator.pushReplacementNamed(context, Constant.AddScrean);

  int selecteIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Image.network("src"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lest go to begain".tr(),
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Receive notifications and reminders about medicines and more"
                  .tr(),
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            PlatformFlatButton(
              handler: goToAddScrean,
              color: Theme.of(context).primaryColor,
              buttonChild: FittedBox(
                child: Text(
                  "Add first reminder".tr(),
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: Color.fromARGB(255, 236, 146, 146)),
                ),
              ),
            )
          ],
        ),




        
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 78, 76, 76),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.medication),
                label: "threatment".tr(),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Team".tr(),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assessment_outlined),
                label: "progress".tr(),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment_turned_in_outlined),
                label: "The day".tr(),
              ),
            ],
            unselectedItemColor: Theme.of(context).primaryColor,
            selectedItemColor: Theme.of(context).primaryColor,
            iconSize: 30,
            currentIndex: selecteIndex,
            onTap: (index) {
              selecteIndex = index;
              if (selecteIndex == 0) {
                Navigator.pushNamed(context, Constant.Threatment);
              } else if (selecteIndex == 1) {
                Navigator.pushNamed(context, Constant.Team);
              } else if (selecteIndex == 2) {
                Navigator.pushNamed(context, Constant.Progress);
              } else if (selecteIndex == 3) {
                Navigator.pushNamed(context, Constant.Day);
              }
              setState(() {});
            }));
  }
}
