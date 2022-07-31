import 'package:flutter_application_1/faceBock2/story.dart';
import 'package:flutter_application_1/faceBock2/user.dart';

class storyRec {
  User? user;
  Story? story;
  storyRec(Map data) {
    this.user = User(data['user']);
    this.story = Story(data['story']);
  }
}
