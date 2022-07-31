import 'package:flutter_application_1/faceBock/Post.dart';
import 'package:flutter_application_1/faceBock/User.dart';

class PostResponseFabeBock {
  Post? post;
  User? user;
  PostResponseFabeBock.fromJson(Map<String, dynamic> data) {
    post = data["post"];
    user = data["user"];
  }
}
