import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/project.dart/Repice/breakfact/breakfastWid.dart';
import 'package:flutter_application_1/project.dart/Repice/dessert/DessertWid.dart';
import 'package:flutter_application_1/project.dart/Repice/lunch/Lunchwid.dart';
import 'package:flutter_application_1/project.dart/Repice/pages/icecream.dart';
import 'package:flutter_application_1/project.dart/Repice/widgets/MealTypeCard.dart';
import 'package:flutter_application_1/project.dart/Repice/widgets/RecipeCard.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
//1--------------
        Container(
          padding: EdgeInsets.fromLTRB(20, 30, 0, 10),
          child: Text(
            "Foodresipe",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w800,
                fontSize: 24,
                letterSpacing: 0.5),
          ),
        ),
//2--------------

        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Good Morning ,\n Devina",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/128/1847/1847105.png"),
              ),
            ],
          ),
        ),
//3--------------

        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled:
                          true, /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// ,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius
                              .zero //////////////////////////////////////////////////////////////
                          ),
                      hintText: ("Search Recipe Here....")),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(16.5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Icon(
                  Icons.tune,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
        )
//4-------------
        ,
        Container(
          height: 110,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => breakfastWid()));
                },
                child: MealTypeCarde(
                  "Breakfast",
                  Icons.breakfast_dining,
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LunchWid()));
                  },
                  child: MealTypeCarde("Lunch", Icons.lunch_dining)),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Dessertwid()));
                  },
                  child: MealTypeCarde("Dessert", Icons.icecream)),
              MealTypeCarde("Dinner", Icons.dinner_dining),
              MealTypeCarde("salads", Icons.dining_sharp),
              MealTypeCarde("cold drinks", Icons.local_drink_outlined),
              MealTypeCarde("soups", Icons.soup_kitchen),
              MealTypeCarde("sauces", Icons.water_drop_rounded),
            ],
          ),
        ),
//5------------
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
          child: Text("Popular Recipes",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
              )),
        ),
        Expanded(
            child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => icewid()));
              },
              child: RecipeCard(
                  "https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aWNlJTIwY3JlYW18ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                  "Ice Cream ",
                  "15 m",
                  "45 m "),
            ),
            RecipeCard(
                "https://media.istockphoto.com/photos/closeup-delicious-pancakes-with-fresh-blueberries-strawberries-and-picture-id947088416?b=1&k=20&m=947088416&s=170667a&w=0&h=igqk45LFgqaDyi-ZZp36hfB9bMqJJIF35a2jMDLmHwg=",
                "panckakes",
                "15 m",
                "15 m"),
            RecipeCard(
                "https://images.unsplash.com/photo-1512568400610-62da28bc8a13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                "coffee",
                "5 m",
                "10 m"),
            RecipeCard(
                "https://images.unsplash.com/photo-1565299585323-38d6b0865b47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dGFjb3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                "Taco",
                "30 m",
                "50 m"),
            RecipeCard(
                "https://images.unsplash.com/photo-1621263764928-df1444c5e859?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVtb24lMjBqdWljZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                "lemon juice",
                "2 m",
                "1 m"),
          ],
        )),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
