import 'package:bloc_learn/core/colors/colors.dart';
import 'package:bloc_learn/presentation/main_page/screen_page_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: scaffback,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: mainPage(),
    );
  }
}

