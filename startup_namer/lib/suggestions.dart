import 'package:english_words/english_words.dart';
import "package:flutter/material.dart";
// import "package:english_words/english_words.dart";

class Suggestions extends StatelessWidget {
  final List<WordPair> _saved;
 Suggestions(this._saved);
 
 

  
  @override
  Widget build(BuildContext context) {
    final tiles = _saved.map((WordPair word) {
    return ListTile( title: Text(word.asPascalCase));
  });

  final divided = tiles.isNotEmpty ? ListTile.divideTiles(context: context, tiles: tiles).toList() : <Widget>[];
    return Scaffold(
      appBar: AppBar(
        title: Text('Your favourites.'),
      ),
      body: ListView(children: divided,),
    );
  }
}