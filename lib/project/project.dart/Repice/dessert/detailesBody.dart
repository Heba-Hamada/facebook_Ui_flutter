import 'package:flutter/material.dart';

class detailesBody extends StatelessWidget {
  String image;
  detailesBody(this.image);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //19-43كل هادا الكونتينر عشان اعمل الايميج الي فوق

        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 248, 121, 163),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: MediaQuery.of(context).size.height * 0.3,
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.7,
                      /*  decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),*/
                    ),
                    Image.network(image)
                  ],
                ),
              ),
            ],
          ),
        ),
        Row()
      ],
    );
  }
}
