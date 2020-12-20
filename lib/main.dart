import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import './screens/screens.dart';
import './globals.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    pairList.addAll(generateWordPairs().take(1000));
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
