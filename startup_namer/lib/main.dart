import "package:flutter/material.dart";
import 'package:english_words/english_words.dart';
import "package:startup_namer/randomwords.dart";



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
        ),
        body: RandomWords()
      ),
    );
  }
}