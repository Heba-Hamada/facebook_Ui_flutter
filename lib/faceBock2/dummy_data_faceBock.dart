import 'package:flutter_application_1/faceBock2/postResponse.dart';

List<Map<String, dynamic>> dummyData = [
  {
    'user': {
      'name': ' HEBA Atef',
      'image':
          'https://images.unsplash.com/photo-1656840952424-5bfb0dce0c11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5NHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
      'action': 'updated his cover photo',
    },
    'post': {
      'content': 'all pepole are  invented',
      'postImage':
          'https://images.unsplash.com/photo-1656746678529-6b53f65424d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
      'nolike': '1',
      'nocomment': '7',
    }
  },
  {
    'user': {
      'name': ' ابو محمد ',
      'image':
          'https://images.unsplash.com/photo-1656821690145-a19d8cbabc92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNTd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'action': 'updated his cover photo',
    },
    'post': {
      'content': 'Beautiful mountin!!',
      'postImage':
          'https://images.unsplash.com/photo-1656627290787-9913583a2353?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNjF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'nolike': '7',
      'nocomment': '55',
    }
  },
  {
    'user': {
      'name': 'albaraa yaqen',
      'image':
          'https://images.unsplash.com/photo-1656794302309-56f11828f29c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNjd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'action': 'updated his cover photo',
    },
    'post': {
      'content': 'hello every body  !!',
      'postImage':
          'https://images.unsplash.com/photo-1656593258250-1e5f92d69e9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNzR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'nolike': '2880',
      'nocomment': '555',
    }
  },
  {
    'user': {
      'name': 'areej atef',
      'image':
          'https://images.unsplash.com/photo-1656709518577-170f523bae9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNzZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'action': 'updated his cover photo',
    },
    'post': {
      'content': 'nice time with  ',
      'postImage':
          'https://images.unsplash.com/photo-1656764984940-7513c4c31f0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNzd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      'nolike': '444',
      'nocomment': '255',
    }
  }
];

List<postResf> postat = dummyData.map((ee) => postResf(ee)).toList();
