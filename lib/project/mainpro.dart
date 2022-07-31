import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class screan2 extends StatefulWidget {
  screan2({Key? key}) : super(key: key);

  @override
  State<screan2> createState() => _screan2State();
}

//====================================================================================================================
class _screan2State extends State<screan2> {
  String content = "hello";
  int index = 0;
  //المتغير الي بدي استخدمه ليغير حاله المود
  bool isDart = false;
  //المثود الي بدي استخدمها داخل ال drower
  //===============================================
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
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDart ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(),

        //---------------------------------------------------------
        //drower_pro.dart
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  arrowColor: Color.fromARGB(255, 248, 155, 236),
                  currentAccountPicture: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 248, 155, 236),
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://cdn-icons.flaticon.com/png/128/450/premium/450166.png?token=exp=1657644213~hmac=5a79eafc1163d958845158ed3b75873d")),
                  accountName: Text(
                    "مرحبا بكم في تطبيق وصفتي ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  accountEmail: Text("")),
              ListTile(
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text("الرئيسية"),
                onTap: () {
                  changeContentfromdrower(0);
                  // Navigator.pop(context);
                },
                subtitle: Text("انقر للذهاب للوصفات الرئيسية "),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text("المفضلة"),
                onTap: () {
                  changeContentfromdrower(1);

                  // Navigator.pop(context);
                },
                subtitle: Text("انقر لعرض الوصفات المفضلة "),
              ),
              ListTile(
                leading: Icon(Icons.category),
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text("الفئات"),
                onTap: () {
                  changeContentfromdrower(2);
                  //  Navigator.pop(context);
                },
                subtitle: Text("انقر لعرض الفئات "),
              ),
              ListTile(
                leading: Icon(Icons.app_settings_alt_rounded),
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text("مظهر التطبيق"),
                onTap: () {
                  //changeContentfromdrower(3);
                  if (isDart == true) {
                    isDart = false;
                    setState(() {});
                  } else {
                    isDart = true;
                    setState(() {});
                  }
                  Navigator.pop(context);
                },
                subtitle: Text("انقر لتغير المظهر "),
              ),
              ListTile(
                leading: Icon(Icons.contact_mail_outlined),
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text("راسلنا"),
                onTap: () {
                  changeContentfromdrower(4);
                  //  Navigator.pop(context);
                },
                subtitle: Text("نسعد لاستقبال ملاحظاتكم وتقيماتكم "),
              )
            ],
          ),
        ),
//-----------------------------------------------------------------============================================================

        body: Container(
          //  margin: EdgeInsets.all(10),
          // padding: EdgeInsets.all(10),
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            color: Color.fromARGB(255, 248, 155, 236),
            height: 70,
            child: Column(children: [
              Row(
                children: [
                  Icon(
                    Icons.palette,
                    size: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "مظهر داكن ",
                        textAlign: TextAlign.right,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("افضل للبصر وعمر البطارية ",
                          textAlign: TextAlign.right),
                    ],
                  ),
                  Spacer(),
                  Text(isDart ? "ON" : "OFF"),
                  Switch(
                      value: isDart,
                      onChanged: (value) {
                        isDart = value;
                        setState(() {});
                      })
                ],
              ),
//-------------------------------------------------------------------------------------------------
              // Text(content),
            ]),
          ),
        ),
        //==========================================================
        //القائمة الي تحت والتحكم الي فيها (bottomNavigationBar)

        bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.black,
            backgroundColor: Color.fromARGB(255, 248, 155, 236),
            // fixedColor: Color.fromARGB(255, 252, 89, 230),
            onTap: (i) {
              index = i;
              if (i == 0) {
                content = "الرئيسية";
              } else if (i == 1) {
                content = "المفضلة";
              } else if (i == 2) {
                content = "profile";
              }
              setState(() {});
            },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "الرئيسية"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "المفضلة"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: "الفئات")
            ]),
        //========================================================================
      ),
    );
  }
}
