import 'package:flutter/material.dart';
import 'package:rida/screens/homepage.dart';
import 'package:rida/screens/design.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      routes: {
        "/design": (context) => Design()
      },
      theme: ThemeData(
        fontFamily: "Alata",
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

