import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class drower extends StatefulWidget {
  @override
  State<drower> createState() => _drowerState();
}

class _drowerState extends State<drower> {
  String content = "hello";

  int index = 0;

  bool isDart = false;
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
    return Scaffold(
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
              },
              subtitle: Text("انقر للذهاب للوصفات الرئيسية "),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text("المفضلة"),
              onTap: () {
                changeContentfromdrower(1);
              },
              subtitle: Text("انقر لعرض الوصفات المفضلة "),
            ),
            ListTile(
              leading: Icon(Icons.category),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text("الفئات"),
              onTap: () {
                changeContentfromdrower(2);
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
                } else {
                  isDart = true;
                }
              },
              subtitle: Text("انقر لتغير المظهر "),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail_outlined),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text("راسلنا"),
              onTap: () {
                changeContentfromdrower(4);
              },
              subtitle: Text("نسعد لاستقبال ملاحظاتكم وتقيماتكم "),
            )
          ],
        ),
      ),
    );
  }
}
