import "package:flutter/material.dart";
import "package:english_words/english_words.dart";

class RandomWords extends StatefulWidget {
  const RandomWords({ Key? key }) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(wordPair.asPascalCase)
      ),
    );
  }
}


