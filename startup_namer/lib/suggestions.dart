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
        leading: IconButton(icon: Icon(Icons.mail_outline), onPressed: null,),
        title: Text('Your favourites.'),
      ),
      body: ListView(children: divided,),
      drawer: Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Center(child: Text('Drawer Header')),
      ),
      ListTile(
        title: const Text('Item 1'),
        trailing: Icon(Icons.notification_add_outlined),
        leading: CircleAvatar(backgroundColor: Colors.limeAccent, ),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: const Text('Item 2'),
        leading: CircleAvatar(backgroundColor: Colors.grey, ),
        trailing: Icon(Icons.notifications_active),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        trailing: ElevatedButton(child: Text('Show snackbar'), onPressed: () {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Hey yo let get coding'),duration: Duration(seconds: 10), action: SnackBarAction(label: 'Undo', onPressed: (){},)),);
        }, ),
      )
    ],
  ),
),
    );
  }
}