import "package:flutter/material.dart";



void main() => runApp(MyApp());
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Startup namer',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Startup namer')
        ),
        body: Container(
          child: Center(child: Text('Hello there'),),
        ),
      ),
    );
  }
}