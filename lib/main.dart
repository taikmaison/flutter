
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_film.dart';
import 'package:flutter_application_1/lesson8.dart';

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
      home: Lesson8(),
      // routes:{
      //   '/films' :(context) => FilmsScreen()
      // } , // ← стартовый экран
    );
  }
}
