import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class Person extends StatelessWidget {
  sendmassegebywhatsapp(String phone, String message) {
    String Url = "whatsapp://send?phone=$phone&text=${Uri.encodeFull(message)}";
    launchUrl(Uri.parse(Url));
  }

  String WahtsApp =
      "whatsapp://send?phone=972597205071&text=${Uri.encodeFull('message')}";
  String num = "123456";
  Future<void> _launchIntel() async {
    launchUrl(
      Uri.parse("tel:0597205071"),
      mode: LaunchMode.externalApplication,
    );
  }

  Future<void> _launchInsms() async {
    launchUrl(
      Uri.parse("sms:0597205071"),
      mode: LaunchMode.externalApplication,
    );
  }

  Shareapp() {
    Share.share("www.myapp.com");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                "https://media.istockphoto.com/photos/female-student-standing-in-college-picture-id1330927460?b=1&k=20&m=1330927460&s=170667a&w=0&h=WtQU1pk6rhzFaLfChNSydYiZeJV1LpCZJtVzQoid-gs="),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            height: 350,
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Programing by : ",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 48, 7, 231))),
                SizedBox(
                  height: 5,
                ),
                Text(" Heba Atef  Hamada",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 10, 10, 10))),
                SizedBox(
                  height: 10,
                ),
                Text("Email :",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 48, 7, 231))),
                Text(" heba1311@gmail.com",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 10, 10, 10))),
                SizedBox(
                  height: 10,
                ),
                Text(" contact with us by : ",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 48, 7, 231))),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    _launchIntel();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 30,
                        color: Color.fromARGB(255, 55, 73, 235),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(" telphone ",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    _launchInsms();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.message,
                        size: 30,
                        color: Color.fromARGB(255, 235, 232, 55),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(" message sms  ",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    sendmassegebywhatsapp(
                        "972597205071", "hello , how can i help you ");
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.whatsapp,
                        size: 30,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(" message whatsapp ",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                InkWell(
                  onTap: () {
                    Shareapp();
                  },
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Shareapp();
                        },
                        child: Icon(
                          Icons.share,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Shareapp();
                        },
                        child: Text("share this app  ",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 48, 7, 231))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
