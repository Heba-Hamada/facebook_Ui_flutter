import 'package:flutter_application_1/faceBock2/storyres.dart';

List<Map<String, dynamic>> dummyData = [
  {
    'user': {
      'name': ' heba atef',
      'image':
          'https://images.unsplash.com/photo-1603268682478-7148debd8e57?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    },
    'story': {
      'image':
          'https://images.unsplash.com/photo-1656940833108-372ae93de99d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    }
  },
  {
    'user': {
      'name': 'maram atef ',
      'image':
          'https://images.unsplash.com/photo-1656936748770-99ac2efe572c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    },
    'story': {
      'image':
          'https://images.unsplash.com/photo-1656906630858-c5519e9cff00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0OHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    }
  },
  {
    'user': {
      'name': 'alparaa ',
      'image':
          'https://images.unsplash.com/photo-1656916687409-9362f8aec9cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1NHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    },
    'story': {
      'image':
          'https://images.unsplash.com/photo-1656925341758-ca083ab09939?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    }
  },
  {
    'user': {
      'name': 'doaa ',
      'image':
          'https://media.istockphoto.com/photos/quality-management-with-qa-qc-and-improvement-standardisation-and-picture-id1357020474?b=1&k=20&m=1357020474&s=170667a&w=0&h=yeBGubb25s5MbNgfAmx5wHbWUo8yYFy7USUYj37lRLY=',
    },
    'story': {
      'image':
          'https://images.unsplash.com/photo-1656871131436-fe6b73cf09d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    }
  }
];

List<storyRec> story = dummyData.map((e) => storyRec(e)).toList();
