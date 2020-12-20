import 'package:flutter/material.dart';
import 'package:random_name_generator/components/build_row.dart';
import '../globals.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: _buildFavorites(),
    );
  }

  Widget _buildFavorites() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: likedPairs.length,
      itemBuilder: (BuildContext _context, int i) {
        return Column(
          children: [
            BuildRow(
              index: i,
            ),
            Divider(),
          ],
        );
      },
    );
  }
}
