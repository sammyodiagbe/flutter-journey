import "package:flutter/material.dart";
import "package:english_words/english_words.dart";
import 'package:startup_namer/suggestions.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({ Key? key }) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 16);
  final _favourites = <WordPair>[];

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
    final _alreadySaved = _favourites.contains(word);
    return ListTile(
      title: Text(word.asPascalCase, style: _biggerFont,
      ),
      trailing: Icon(
        _alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: _alreadySaved ? Colors.red : null,
        
      ),
      onTap: () {
        setState(() {
          if(_alreadySaved) {
            _favourites.remove(word);
          }else {
            _favourites.add(word);
          }
        });
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup namer'),
        actions: [
           IconButton(icon: Icon(Icons.list), onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Suggestions(_favourites))
              ,);

            }, iconSize: 40,)
        ]
      ),
      body: _buildSuggestions(),
    );
  }
}


