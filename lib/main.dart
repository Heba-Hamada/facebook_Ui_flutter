import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Calclater/CalcHome.dart';
import 'package:flutter_application_1/MyApp2/Welcome/mainapp.dart';
import 'package:flutter_application_1/Sharedhelper/spHelper.dart';
import 'package:flutter_application_1/TodoApp/data/db_helper.dart';
import 'package:flutter_application_1/TodoApp/models/task_model.dart';

import 'package:flutter_application_1/nave/Screan1.dart';
import 'package:flutter_application_1/nave/appRouter.dart';
import 'package:flutter_application_1/nave/constantnav.dart';
import 'package:flutter_application_1/nave/pathNotFound.dart';
import 'package:flutter_application_1/nave/screan2.dart';
import 'package:flutter_application_1/project.dart/Repice/pages/Home(main).dart';

import 'package:flutter_application_1/project/mainpro.dart';
import 'package:flutter_application_1/regeister/RegistrScrean.dart';
import 'package:flutter_application_1/translation.dart';
import 'Instegram/mainInstegram.dart';
import 'faceBock/FaceBock.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

ValueNotifier<bool> isDarkMode = ValueNotifier(false);
void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //بتتاكد قبل م يشتغل التطبيق انو تم عمل اعدادات اللغة
  //await EasyLocalization.ensureInitialized();
  await SpHelper.Initsp(); //اذا التطبيق تبعي معتمد ع الملف بعمله انشاء قبل
  runApp(
 ChangeNotifierProvider<TaskModel>(
    create: (context) => TaskModel(),
    child: MaterialApp(
      home: MyApp(),
    ),
  )
    /*
       navigatorKey: appRouter.navkey,
        home: CalclHome(),
        routes: {
          constantnav.name1scr: (context) => Screan1(),
          constantnav.name2scr: (context) => Screan2("")
        },
        onGenerateRoute: (RouteSettings ro) {
          String? name = ro.name;
          dynamic arg = ro.arguments;
          if (name == constantnav.name2scr) {
            return MaterialPageRoute(builder: (context) {
              return Screan2(arg.toString());
            });
          } else {
            return MaterialPageRoute(builder: (context) {
              return pathNotFound(name!)
            });
        },*/
      ),
    ),
  );
  /* EasyLocalization(
        supportedLocales: [
          Locale('en'),
          Locale('ar'),
       
        ], //اللغات المدعومة بتطبيقي

        path:
            'assets/langs', // <-- change the path of the translation files //المسار الموجود فيه التطيق تعي
        fallbackLocale:
            Locale('en'), //الكلمة الااسية الي ياخدها في حال فشل الترجمة
        child: MyApp()),
  );*/
}

class MyApp extends StatelessWidget {
  //اي تطبيقانا عمله دعم تعدد اللغات لازم احط بالماتيريال اب هادي ال3 اسطر
  @override
  Widget build(BuildContext context) {
    /*  return ScreenUtilInit(
        designSize: Size(360, 690), //ابعاد الجوال الي بشتغل عليه \
        splitScreenMode: true, // الشاشة المكونة منن  شاشتين
        minTextAdapt: true, // بغير حجم الخط حسب ابعاد الشاشة
        builder: (context, child) {*/
    return MaterialApp(
      home: Screan1(),
    );
    //      });
  }
  // }
}

//38
//10.35

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screan1"),
      ),
    );
  }
}

class myapp extends StatefulWidget {
  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  bool isDart = false;

  changetheme(bool value) {
    isDart = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //  theme: isDart ? ThemeData.dark() : ThemeData.light(),
        home: translation());
  }
}

/*class ResponsiveScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 2,
          color: Colors.lightBlueAccent),
      drawer: orientation == Orientation.landscape
          ? null
          : Drawer(
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        child: (Text("he")),
                      ),
                      accountName: Text("Heba"),
                      accountEmail: Text("tyuiopp@geamail.com")),
                  const ListTile(
                    leading: Icon(Icons.home),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text("home"),
                    subtitle: Text("go to home "),
                  ),
                  const ListTile(
                    leading: Icon(Icons.favorite),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text("favorite"),
                    subtitle: Text("go to favorite "),
                  ),
                  ListTile(
                    leading: Icon(Icons.perm_identity),
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text("Profile"),
                    subtitle: Text("go to Profile "),
                  )
                ],
              ),
            ),
    );
  }
}

class heba extends StatefulWidget {
  heba({Key? key}) : super(key: key);

  @override
  State<heba> createState() => _hebaState();
}

class _hebaState extends State<heba> {
  String content = "home page ";
  int index = 0;
  changeContentfromdrower(int i) {
    index = i;
    if (i == 0) {
      content = "الرئيسية";
    } else if (i == 1) {
      content = "المفضلة";
    } else if (i == 2) {
      content = "profile";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: index, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favorite"),
        BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity), label: "profile")
      ]),
    );
  }
}*/
/*
class sc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              child: Text("1"),
            ),
            Tab(
              child: Text("2"),
            ),
            Tab(
              child: Text("3"),
            )
          ]),
        ),
        body: Container(
          child: Text("ooo"),
        ),
      ),
    );
  }
}*/
/*void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/langs', // <-- change the path of the translation files
      fallbackLocale: Locale('en'),
      child: MyApp()));
}*/

