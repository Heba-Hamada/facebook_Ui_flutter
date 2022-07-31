import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/faceBock2/dummy_data_faceBock.dart';
import 'package:flutter_application_1/faceBock2/postweggetfacebock.dart';

import 'Storyfacebook.dart';
import 'dummydataofstory.dart';

class Facebook extends StatelessWidget {
  //const Facebook ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //   log( MediaQuery.of(context).size.height.toInt() );

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'images/assets/camera.png/',
              width: 32,
              height: 32,
            ),
            Expanded(
              child: Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    fillColor: Color.fromARGB(225, 238, 238, 238),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Image.asset(
              "images/assets/mas.png/",
              width: 32,
              height: 32,
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * (2 / 9),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: story.length,
                itemBuilder: (context, index) =>
                    StoryFacebook(story[index].user!, story[index].story!),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: postat.length,
                  itemBuilder: (context, index) => postWidgetFacebook(
                      postat[index].user!, postat[index].post!),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 60,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/icons/homepage.png",
              height: 24,
              width: 24,
            ),
            Image.asset(
              "assets/icons/users.png",
              height: 24,
              width: 24,
            ),
            Image.asset(
              "assets/icons/watch.png",
              height: 24,
              width: 24,
            ),
            Image.asset(
              "assets/icons/bell.png",
              height: 24,
              width: 24,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                "assets/images/my.jpg",
                height: 32,
                width: 32,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
