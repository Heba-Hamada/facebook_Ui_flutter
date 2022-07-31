import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Instegram/endinstegram.dart';
import 'package:flutter_application_1/Instegram/instegramWedget.dart';
import 'package:flutter_application_1/Instegram/newpost.dart';
import 'package:flutter_application_1/Instegram/storyWedget.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/nave/appRouter.dart';

import '../data/instegramdata.dart';
import 'modelInstegram/user.dart';

class instegram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return newpost();
            }));
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text("Instegram "),
        ),
        body:
            //     child:
            //   Column(
            //  children: [
            /*  ListView(

        children: posts.map((e) {
          return postwidget(e.post!, e.user!);
        }).toList(),
      ),*/

            Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return CircleAvatar(
                          backgroundImage:
                              NetworkImage(posts[index].post!.image!),
                          radius: 40,
                          child: Icon(Icons.add),
                          backgroundColor: Colors.blue[800],
                        );
                      }
                      return StoryWidget(posts[index].post!);
                    }),
              ),
              Expanded(
                //     height: 500,
                child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return postwidget(posts[index].post!, posts[index].user!);
                    }),
              ),
            ],
          ),
        )

        /*
              Row(
                children: [
                  Image.network(
                      height: 50,
                      width: 50,
                      "https://cdn-icons-png.flaticon.com/128/813/813670.png"),
                  SizedBox(
                    width: 30,
                  ),
                  Image.network(
                      height: 50,
                      width: 50,
                      "https://cdn-icons-png.flaticon.com/128/149/149309.png"),
                  SizedBox(
                    width: 30,
                  ),
                  Image.network(
                      height: 50,
                      width: 50,
                      "https://cdn-icons.flaticon.com/png/128/2040/premium/2040520.png?token=exp=1657552199~hmac=d73fd6f6653dacbc5ba58742f2b9b5ed"),
                  SizedBox(
                    width: 30,
                  ),
                  Image.network(
                      height: 50,
                      width: 50,
                      "https://cdn-icons-png.flaticon.com/128/1077/1077035.png"),
                  SizedBox(
                    width: 30,
                  ),
                  Image.network(
                      height: 50,
                      width: 50,
                      "https://cdn-icons-png.flaticon.com/128/747/747376.png"),
                ],
              ),*/
        //  ],
        // )
        );
  }
}
