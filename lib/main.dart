import 'package:exam/health/bottonNavigationForHealth.dart';
import 'package:exam/news/bottonNavigationForNews.dart';
import 'package:exam/workout/bottonNavigationForWorkout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BottomNavigationForWorkout(),
    );
  }
}

