import 'package:flutter_application_1/Instegram/modelInstegram/post.dart';
import 'package:flutter_application_1/Instegram/modelInstegram/user.dart';

class PostResponse {
  User? user;
  Post? post;
  PostResponse(this.user, this.post);

  PostResponse.fromJson(Map<String, dynamic> data) {
    user = User.fromJson(data['user']);
    post = Post.fromJson(data['post']);
  }
}
