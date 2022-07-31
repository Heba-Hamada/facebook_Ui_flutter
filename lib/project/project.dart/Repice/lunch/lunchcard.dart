import 'package:flutter/material.dart';
import 'package:flutter_application_1/project.dart/Data/Lunchdata.dart';
import 'package:flutter_application_1/project.dart/Repice/lunch/detailesScrean.dart';

class lunchcard extends StatelessWidget {
  int itemIndex;
  lunchdata Lunchdata;
  Function press;

  lunchcard(this.Lunchdata, this.itemIndex, this.press);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 190,
      margin: EdgeInsets.only(top: 20),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => detailesScrean()));
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12,
                    ),
                  ]),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 160,
                width: 200,
                child: Image.network(Lunchdata.image),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 136,
                //لانو الصورة تعتنا عبارة عن 200 فحجم هادا البوكس عبارة عن 200 ناقص الصورة
                width: size.width - 200,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        Lunchdata.title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        Lunchdata.sutitle,
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
