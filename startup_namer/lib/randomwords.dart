import "package:flutter/material.dart";
import "package:english_words/english_words.dart";

class RandomWords extends StatefulWidget {
  const RandomWords({ Key? key }) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: EdgeInsets.all(5), 
      itemBuilder: (BuildContext _context, int i) {
      if(i.isOdd) {
        return Divider();
      }

      int index = i ~/ 2;
      if(index >= _suggestions.length) {
        // generate another 10 words and add to the list of word pairs
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_suggestions[index]);
    },);
  }

  Widget _buildRow(WordPair word) {
    return ListTile(
      title: Text(word.asPascalCase, style: _biggerFont,)
    );
  }
  @override
  Widget build(BuildContext context) {
    return _buildSuggestions();
  }
}


