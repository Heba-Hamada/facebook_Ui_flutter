import 'package:flutter/material.dart';

class Saved extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(140),
          child: const Icon(
            Icons.save_alt_outlined,
            size: 150,
            color: Colors.grey,
          ),
        ),
        const Text(
          "nothing saved yet ",
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            fontSize: 40,
            color: Colors.grey,
          ),
        )
      ],
    ));
  }
}
