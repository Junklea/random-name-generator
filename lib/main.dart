import 'package:flutter/material.dart';
import 'package:random_name_generator/screens/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
