import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/project.dart/Repice/pages/Categorypage.dart';
import 'package:flutter_application_1/project.dart/Repice/pages/HomePage.dart';
import 'package:flutter_application_1/project.dart/Repice/pages/Person.dart';
import 'package:flutter_application_1/project.dart/Repice/pages/Saved.dart';

import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  sendmassegebywhatsapp(String phone, String message) {
    String Url2 =
        "whatsapp://send?phone=$phone&text=${Uri.encodeFull(message)}";
    launchUrl(Uri.parse(Url2));
  }

  String WahtsApp =
      "whatsapp://send?phone=972597205071&text=${Uri.encodeFull('message')}";
  int selecteIndex = 0;
  void onItemapped(int index) {
    setState(() {
      selecteIndex = index;
    });
  }

  int index = 0;

  List<Widget> pages = <Widget>[
    Homepage(),
    Categorypage(),
    Saved(),
    Person(),
  ];

  mode() {
    isDarkMode.value = !isDarkMode.value;
  }

  changeContentfromdrower(int i) {
    index = i;
    if (i == 0) {
      pages[0];
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Homepage()));
      // Homepage();
    } else if (i == 1) {
      pages[1];

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Categorypage()));
      //Categorypage();
    } else if (i == 2) {
      pages[2];

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Saved()));
      //Saved();
    } else if (i == 3) {
      pages[3];

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Person()));
      // Person();
    } else if (i == 4) {
      sendmassegebywhatsapp("972597205071", "hello");

      // Person();
    } else if (i == 5) {
      mode();
      // Person();
    }

    setState(() {});
    Navigator.pop(context);
  }

  bool isDart = false;
//1.41.56
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
          backgroundColor: isDarkMode.value ? Colors.black : Colors.white,
          body: pages[selecteIndex],
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          drawer: orientation == Orientation.landscape
              ? null
              : Drawer(
                  child: Column(
                    children: [
                      const UserAccountsDrawerHeader(
                          arrowColor: Color.fromARGB(255, 155, 248, 212),
                          currentAccountPicture: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 110, 228, 179),
                              radius: 50,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/128/1847/1847105.png")),
                          accountName: Text(
                            "Welcome in my app ",
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
                        title: Text("Home"),
                        onTap: () {
                          changeContentfromdrower(0);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Homepage()));
                        },
                        subtitle: Text("go to Home"),
                      ),
                      ListTile(
                        leading: Icon(Icons.category),
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text("Category"),
                        onTap: () {
                          //  pages[1];
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Categorypage()));
                          changeContentfromdrower(1);
                        },
                        subtitle: Text("go to Category"),
                      ),
                      ListTile(
                        leading: Icon(Icons.save_alt),
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text("Saved"),
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Saved()));
                          changeContentfromdrower(2);
                        },
                        subtitle: Text("go to Saved"),
                      ),
                      ListTile(
                        leading: Icon(Icons.perm_identity),
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text("Profile"),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Person()));
                          changeContentfromdrower(3);
                        },
                        subtitle: Text("go to Profile"),
                      ),
                      ListTile(
                        leading: Icon(Icons.app_settings_alt_rounded),
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text("app appearance"),
                        onTap: () {
                          changeContentfromdrower(5);
                        },
                        subtitle: Text("dark or light"),
                      ),
                      ListTile(
                        leading: Icon(Icons.contact_mail_outlined),
                        trailing: Icon(Icons.arrow_forward_ios),
                        title: Text("write to us "),
                        onTap: () {
                          changeContentfromdrower(4);
                        },
                        subtitle: Text("نسعد لاستقبال ملاحظاتكم وتقيماتكم "),
                      )
                    ],
                  ),
                ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: "Category",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline),
                label: "Saved",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Profile",
              ),
              /* BottomNavigationBarItem(
                icon: Icon(Icons.palette),
                label: "Mode",
              ),*/
              //change color of item in navegatior
            ],
            unselectedItemColor: Theme.of(context).primaryColor,
            selectedItemColor: Theme.of(context).primaryColor,
            iconSize: 30,
            currentIndex: selecteIndex,
            onTap:
                /* /* (index) {
                selecteIndex = index;
                setState(() {});
              }*/*/
                onItemapped,
          )),
    );
  }
}
