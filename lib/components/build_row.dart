import 'package:flutter/material.dart';
import '../globals.dart';

class BuildRow extends StatefulWidget {
  final int index;
  const BuildRow({Key key, @required this.index}) : super(key: key);

  @override
  _BuildRowState createState() => _BuildRowState();
}

class _BuildRowState extends State<BuildRow> {
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    final bool alreadyLiked = likedPairs.contains(widget.index);
    return ListTile(
      title: Text(
        pairList[widget.index].asPascalCase,
        style: _biggerFont,
      ),
      trailing: GestureDetector(
        child: Icon(
          alreadyLiked ? Icons.favorite : Icons.favorite_border,
          color: alreadyLiked ? Colors.red : null,
        ),
        onTap: () {
          setState(() {
            print(pairList[widget.index].asPascalCase);
            if (alreadyLiked) {
              likedPairs.remove(widget.index);
            } else {
              likedPairs.add(widget.index);
            }
          });
        },
      ),
    );
  }
}
