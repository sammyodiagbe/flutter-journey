import "package:flutter/material.dart";
import "package:startup_namer/randomwords.dart";



void main() => runApp(MyApp());
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Startup namer',
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.grey
      ),
      debugShowCheckedModeBanner: false,
      home: RandomWords(),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Startup namer'),
          elevation: 0.3,
          actions: [
           
          ],
        ),
        body: RandomWords()
      );
  }
}