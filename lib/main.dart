import 'package:flutter/material.dart';
import 'package:flutter_task_d3/Home.dart';
import 'package:flutter_task_d3/UserInfo.dart';
import 'package:flutter_task_d3/ScoreScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz app and login form',
      home: const HomePage(),
      routes: {
        '/userinfo': (context) => UserInfo(),
        '/score': (context) => ScoreScreen(),
      },
    );
  }
}
