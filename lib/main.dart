import 'package:flutter/material.dart';
import 'package:project_baru/detail.dart';
import 'package:project_baru/home.dart';
import 'package:project_baru/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(19, 10, 43, 1)
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


