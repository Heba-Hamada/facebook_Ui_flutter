import 'package:flutter/material.dart';
import 'package:flutter_application_1/faceBock/Post.dart';
import 'package:flutter_application_1/faceBock/User.dart';

class faceBockWedgit extends StatelessWidget {
  User user;
  Post post;
  faceBockWedgit(this.user, this.post);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(user.image!),
                radius: 40,
              ),
              Text(user.name!),
              Text(user.action!),
              Spacer(),
              Icon((Icons.more_horiz_rounded))
            ],
          ),
          Column(
            children: [
              Image.network(
                post.postImage!,
                fit: BoxFit.cover,
              ),
              Text(
                post.content!,
              ),
              Text(post.nolike!)
            ],
          ),
        ],
      ),
    );
  }
}
