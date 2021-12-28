import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ordering_food/constants.dart';
import 'package:ordering_food/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kSecondaryColor),
          bodyText2: TextStyle(color: kSecondaryColor)
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

