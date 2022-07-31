import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modelInstegram/post.dart';

class StoryWidget extends StatelessWidget {
  Post post;
  StoryWidget(this.post);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(post.image!),
    );
  }
}
