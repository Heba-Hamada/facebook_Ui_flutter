import 'package:flutter/material.dart';
import 'package:flutter_application_1/project.dart/Repice/breakfact/breakfastWid.dart';
import 'package:flutter_application_1/project.dart/Repice/dessert/DessertWid.dart';
import 'package:flutter_application_1/project.dart/Repice/lunch/Lunchwid.dart';
import 'package:flutter_application_1/project.dart/Repice/widgets/mealgridtile.dart';

class Categorypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
//1----------------------------
        Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
          child: const Text(
            "Category",
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 24, color: Colors.black),
          ),
        ),
//2---------------------------
        Expanded(
          child: GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: ((MediaQuery.of(context).size.width / 2) /
                250), /////////////////////////////////////////////////
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => breakfastWid()));
                },
                child: mealgridtile(
                    "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJyZWFrZmFzdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                    "Breakfast"),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LunchWid()));
                },
                child: mealgridtile(
                    "https://images.unsplash.com/photo-1600335895229-6e75511892c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bHVuY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                    "Lunch"),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Dessertwid()));
                },
                child: mealgridtile(
                    "https://media.istockphoto.com/photos/piece-of-sachertorte-sachr-cake-on-white-plate-top-view-copy-space-picture-id1296474411?b=1&k=20&m=1296474411&s=170667a&w=0&h=KwzSC3hrY3ZE07GJ3P08E5WZO72eHqqe7XKxUmX8Pk4=",
                    "Dessert"),
              ),
              mealgridtile(
                  "https://media.istockphoto.com/photos/assortment-of-delicious-authentic-tacos-birria-carne-asada-adobada-picture-id1347087219?b=1&k=20&m=1347087219&s=170667a&w=0&h=VaKkIm9mJTHqjzQrMwlSWh66fOIicTXDGPqouVZ70-k=",
                  "Dinner"),
              mealgridtile(
                  "https://images.unsplash.com/photo-1563599175592-c58dc214deff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2F1Y2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  "sauces"),
              mealgridtile(
                  "https://images.unsplash.com/photo-1623855244697-5d8fbe9c7892?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2FsYWRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  "salads"),
              mealgridtile(
                  "https://images.unsplash.com/photo-1500630967344-3b1f546423ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29sZCUyMGRyaW5rfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  "cold drinks"),
              mealgridtile(
                  "https://images.unsplash.com/photo-1517610317588-57acba78aef2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c291cHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                  "soups"),
            ],
          ),
        )
      ],
    );
  }
}
