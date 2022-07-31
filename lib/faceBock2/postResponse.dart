import 'package:flutter_application_1/faceBock2/post.dart';
import 'package:flutter_application_1/faceBock2/user.dart';

class postResf {
  User? user;
  Post? post;

  postResf(Map data) {
    user = User(data['user']);
    post = Post(data['post']);
  }
}
