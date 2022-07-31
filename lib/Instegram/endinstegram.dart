import 'package:flutter/cupertino.dart';

class endinstegram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
            height: 60,
            width: 50,
            "https://cdn-icons-png.flaticon.com/128/813/813670.png"),
        SizedBox(
          width: 30,
        ),
        Image.network(
            height: 60,
            width: 50,
            "https://cdn-icons-png.flaticon.com/128/149/149309.png"),
        SizedBox(
          width: 30,
        ),
        Image.network(
            height: 60,
            width: 50,
            "https://cdn-icons.flaticon.com/png/128/2040/premium/2040520.png?token=exp=1657459557~hmac=9e4aa5b6545f887fe68af751fcc0abe5"),
        SizedBox(
          width: 30,
        ),
        Image.network(
            height: 60,
            width: 50,
            "https://cdn-icons-png.flaticon.com/128/1077/1077035.png"),
        SizedBox(
          width: 30,
        ),
        Image.network(
            height: 60,
            width: 50,
            "https://cdn-icons-png.flaticon.com/128/747/747376.png"),
      ],
    );
  }
}
