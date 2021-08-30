import 'package:flutter/material.dart';
import 'package:rida/screens/basics/appbar.dart';
import 'package:rida/screens/basics/snackbar.dart';
import 'package:rida/screens/homepage.dart';
import 'package:rida/screens/basics.dart';

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
        "/basics": (context) => Basics(),
        "/basics/snackbar": (context) => Snackbar(),
        "/basics/appbar": (context) => Appbar()
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

