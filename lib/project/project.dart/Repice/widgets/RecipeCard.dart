import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  String imageSrc;
  String title;
  String ptrptime;
  String cooktime;
  RecipeCard(this.imageSrc, this.title, this.ptrptime, this.cooktime);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          width: 200,
          height: MediaQuery.of(context).size.height / 2,
          child: Image.network(
            this.imageSrc,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 8,
            color: Colors.white,
            padding: EdgeInsets.only(left: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  Text(
                    "${this.ptrptime}prep time",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                  Text(
                    "${this.cooktime} cook time",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                      Icon(Icons.star, size: 20, color: Colors.grey[400]),
                    ],
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
