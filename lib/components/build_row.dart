import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import '../globals.dart';

class BuildRow extends StatefulWidget {
  final WordPair pair;
  const BuildRow({Key key, @required this.pair}) : super(key: key);

  @override
  _BuildRowState createState() => _BuildRowState();
}

class _BuildRowState extends State<BuildRow> {
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    final bool alreadyLiked = saved.contains(widget.pair);
    return ListTile(
      title: Text(
        widget.pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: GestureDetector(
        child: Icon(
          alreadyLiked ? Icons.favorite : Icons.favorite_border,
          color: alreadyLiked ? Colors.red : null,
        ),
        onTap: () {
          setState(() {
            print(widget.pair.asPascalCase);
            if (alreadyLiked) {
              saved.remove(widget.pair);
            } else {
              saved.add(widget.pair);
            }
          });
        },
      ),
    );
  }
}
