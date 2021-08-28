import 'package:english_words/english_words.dart';
import "package:flutter/material.dart";
// import "package:english_words/english_words.dart";

class Suggestions extends StatelessWidget {
 Suggestions(this._saved);
 
 final List<WordPair> _saved;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your favourites.'),
      ),
      body:Container(),
    );
  }
}