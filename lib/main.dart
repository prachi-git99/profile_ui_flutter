import 'package:flutter/material.dart';
import 'package:interview/consts/colors.dart';
import 'package:interview/screens/ProfileScreen.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: blueColor,
        useMaterial3: true,
      ),
      home: ProfileScreen(),
    );
  }
}

