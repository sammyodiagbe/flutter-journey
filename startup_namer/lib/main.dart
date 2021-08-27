import "package:flutter/material.dart";



void main() => runApp(MyApp());
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Startup namer',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Startup namer'),
          elevation: 0,
        ),
        body: Container(
          child: Center(child: TextButton(onPressed: null, child: Text('Hello there'),
          ),),
        ),
      ),
    );
  }
}