import 'package:flutter_application_1/Instegram/modelInstegram/postResponse.dart';

List<Map<String, dynamic>> postsResponse = [
  {
    "user": {
      "name": "heba atef ",
      "image":
          "https://images.unsplash.com/photo-1657446969158-e6b37b6d2692?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    },
    "post": {
      "content": "this is my first photo",
      "image":
          "https://images.unsplash.com/photo-1656002278047-03b12a6f066d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
      "noLikes": 30,
    }
  },
  {
    "user": {
      "name": "areej atef ",
      "image":
          "https://images.unsplash.com/photo-1657441573160-ca70f262b248?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    },
    "post": {
      "content": "working time ",
      "image":
          "https://images.unsplash.com/photo-1657446733019-1d88b949a8e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
      "noLikes": 30,
    }
  },
  {
    "user": {
      "name": "ام محمد ",
      "image":
          "https://images.unsplash.com/photo-1657373372123-82faeea24455?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    },
    "post": {
      "content": "wlcome  eadd ",
      "image":
          "https://images.unsplash.com/photo-1657299156271-d5a435dd65b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
      "noLikes": 20,
    }
  },
  {
    "user": {
      "name": "anas ",
      "image":
          "https://images.unsplash.com/photo-1657399179109-63d7ff62ad52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0OXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    },
    "post": {
      "content": "this my new car  ",
      "image":
          "https://images.unsplash.com/photo-1657451162261-d1fe3be2d768?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
      "noLikes": 20,
    }
  },
  {
    "user": {
      "name": "doaa atef ",
      "image":
          "https://images.unsplash.com/photo-1657299143474-c456e8388ee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    },
    "post": {
      "content": "great natural",
      "image":
          "https://images.unsplash.com/photo-1656696886798-39317214079a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
      "noLikes": 20,
    }
  },
];

List<PostResponse> posts =
    postsResponse.map((e) => PostResponse.fromJson(e)).toList();
