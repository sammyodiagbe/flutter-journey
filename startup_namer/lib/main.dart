import "package:flutter/material.dart";
import "package:startup_namer/randomwords.dart";
import 'package:startup_namer/suggestions.dart';



void main() => runApp(MyApp());
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Startup namer',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Startup namer'),
          elevation: 0.3,
          actions: [
            IconButton(icon: Icon(Icons.list), onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ( context) => Suggestions()),);

            }, iconSize: 40,)
          ],
        ),
        body: RandomWords()
      ),
    );
  }
}