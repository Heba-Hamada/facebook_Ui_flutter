import 'package:flutter/material.dart';

class mealgridtile extends StatelessWidget {
  String title;
  String imageSrc;
  mealgridtile(this.imageSrc, this.title);
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          this.imageSrc,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 66, 66, 66).withOpacity(0.15),
                  Color.fromARGB(255, 71, 71, 71),
                ],
              ),
            ),
            child: Text(
              this.title,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
