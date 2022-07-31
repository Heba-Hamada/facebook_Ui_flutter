class story {
  String? image;
  story.fromJson(Map<String, dynamic> data) {
    image = data["image"];
  }
}
