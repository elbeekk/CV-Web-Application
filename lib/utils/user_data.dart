import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class UserData {
  UserData._();

  static List flutterFeatures = [
    [
      FlutterDEVICON.flutter_plain,
      "What is Flutter?",
      "Flutter is an open source framework developed and supported by Google. Frontend and full-stack developers use Flutter to build an application's user interface (UI) for multiple platforms with a single codebase."
    ],
    [
      Ionicons.ios_phone_portrait_outline,
      'Mobile App development',
      'Flutter is an awesome framework for building mobile apps. It offers fast development times, beautiful and responsive designs, and a single codebase for both iOS and Android.'
    ],
    [
      MaterialCommunityIcons.web,
      'Web App development',
      'The web itself is a flexible platform, but Flutter is ideal for building web applications like PWAs or SPAs and bringing your existing mobile app to the web.'
    ]
  ];

  static List educationHistory = [
    [
      'Presidential School in Jizzakh',
      'The Presidential School is a specialized public educational institution whose activities are aimed at identifying and educating gifted children to train highly qualified specialists.',
      'Sep 2021',
      'Jun 2023',
      'https://piima.uz/en/page/presidential-schools'
    ],
    [
      'Tashkent State University of Economics',
      'Tashkent State University of Economics is one of the largest higher education institutions in the field of economics in Uzbekistan and Central Asia.',
      'Sep 2023',
      'Present',
      'https://tsue.uz/en'
    ]
  ];

  static List workHistory = [
    [
      'Flutter Developer in Githubit',
      'A mobile app developer uses programming languages and development skills to create, test, and develop applications on mobile devices.',
      'Jun 2023',
      'Present',
      'https://githubit.com'
    ],
  ];
}
