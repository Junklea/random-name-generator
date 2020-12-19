import 'package:flutter/material.dart';
import './screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      routes: {
        '/': (context) => MainScreen(),
        '/favorites': (context) => FavoritesScreen(),
      },
      // home: MainScreen(),
      // home: FavoritesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
