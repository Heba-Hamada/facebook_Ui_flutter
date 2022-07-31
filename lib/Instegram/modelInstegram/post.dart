import 'dart:io';

class Post {
  String? content;
  String? image;
  int? noLikes;
  File? file;
  Post.fromfile({this.content, this.file});
  Post.fromJson(Map<String, dynamic> data) {
    content = data['content'];
    image = data['image'];
    noLikes = data['noLikes'];
  }
}
