import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import '../components/build_row.dart';
import '../globals.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Name Generator'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                Navigator.pushNamed(context, '/favorites');
              }),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (BuildContext _context, int i) {
        if (i >= suggestions.length) {
          suggestions.addAll(generateWordPairs().take(10));
        }
        return Column(
          children: [
            BuildRow(
              pair: suggestions[i],
            ),
            Divider(),
          ],
        );
      },
    );
  }
}
