import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Instegram/modelInstegram/user.dart';

import 'modelInstegram/post.dart';

class postwidget extends StatelessWidget {
  User user;
  Post post;
  postwidget(this.post, this.user);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(user.image ?? ""),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              user.name ?? "user",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.more_horiz_rounded),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        color: Colors.indigo,
        width: 1000,
        height: 400,
        child: post.file == null
            ? Image.network(
                post.image ?? " ",
                fit: BoxFit.cover,
              )
            : Image.file(
                post.file!,
                fit: BoxFit.cover,
              ),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            Image.network(
              "https://cdn-icons-png.flaticon.com/128/1077/1077035.png",
              height: 50,
              width: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Image.network(
                height: 50,
                width: 40,
                "https://cdn-icons-png.flaticon.com/128/7205/7205744.png"),
            SizedBox(
              width: 10,
            ),
            Image.network(
                height: 50,
                width: 30,
                "https://cdn-icons-png.flaticon.com/128/786/786205.png"),
            Spacer(),
            Image.network(
                height: 50,
                width: 30,
                "https://cdn-icons.flaticon.com/png/128/5662/premium/5662990.png?token=exp=1657564699~hmac=576f488fc219a63c69d7a0817e6aaf9d"),
          ],
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
          margin: EdgeInsets.only(left: 20), child: Text(post.content ?? "")),
      SizedBox(
        height: 5,
      ),
    ]);
  }
}
