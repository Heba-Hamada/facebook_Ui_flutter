class User {
  String? name;
  String? image;
  String? action;

  User.fromJson(Map<String, dynamic> data) {
    name = data["name"];
    image = data["image"];
    action = data["action"];
  }
}
