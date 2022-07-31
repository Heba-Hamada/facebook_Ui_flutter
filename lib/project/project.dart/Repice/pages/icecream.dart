import 'package:flutter/material.dart';

class icecream {
  String image;
  String title;
  String mok;
  String dec;
  icecream(this.image, this.title, this.mok, this.dec);
}

class icewid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 248, 186, 207),
          leading: IconButton(
              padding: EdgeInsets.only(
                right: 20,
              ),

              //رجعني ع القائمة الرئيسية
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 241, 143, 176),
              )),
          title: const Text(
            "back",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            //19-43كل هادا الكونتينر عشان اعمل الايميج الي فوق

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
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
                          width: MediaQuery.of(context).size.width,
                          /*  decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),*/
                        ),
                        Image.network(
                          "https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aWNlJTIwY3JlYW18ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "ice cream",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
