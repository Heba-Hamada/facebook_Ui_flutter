class Post {
  String? content;
  String? postImage;
  String? nolike;
  String? nocomment;

  Post.fromJson(Map<String, dynamic> data) {
    content = data["content"];
    postImage = data["postImage"];
    nolike = data["nolike"];
    nocomment = data["nocomment"];
  }
}
