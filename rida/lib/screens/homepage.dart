import "package:flutter/material.dart";
import 'package:rida/screens/drawer.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(context),
      appBar: AppBar(
        title: Text("Flutter journey"),
        
      ),
    );
  }
}