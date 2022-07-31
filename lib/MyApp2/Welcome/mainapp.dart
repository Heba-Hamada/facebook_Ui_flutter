import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyApp2/Constant.dart';
import 'package:flutter_application_1/MyApp2/HomeSreanPage.dart';
import 'package:flutter_application_1/MyApp2/Welcome/Welcome.dart';
import 'package:flutter_application_1/MyApp2/Widgets/Day.dart';
import 'package:flutter_application_1/MyApp2/Widgets/Team.dart';
import 'package:flutter_application_1/MyApp2/Widgets/pathNotFound.dart';
import 'package:flutter_application_1/MyApp2/Widgets/progress.dart';
import 'package:flutter_application_1/MyApp2/Widgets/threatment.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: Welcome(),
        routes: {
          Constant.Threatment: (context) => Threatment(),
          Constant.Team: (context) => Team(),
          Constant.Progress: (context) => Progress(),
          Constant.Day: (context) => Day(),
        },
        onGenerateRoute: (RouteSettings ro) {
          String? name = ro.name;
          dynamic arg = ro.arguments;
          if (name == Constant.Threatment) {
            return MaterialPageRoute(builder: (context) {
              return Threatment();
            });
          } else if (name == Constant.Progress) {
            return MaterialPageRoute(builder: (context) {
              return Progress();
            });
          } else if (name == Constant.Team) {
            return MaterialPageRoute(builder: (context) {
              return Team();
            });
          } else if (name == Constant.Day) {
            return MaterialPageRoute(builder: (context) {
              return Day();
            });
          } else {
            return MaterialPageRoute(builder: (context) {
              return pathNotFound(name!);
            });
          }
        });
  }
}
