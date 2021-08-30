import "package:flutter/material.dart";
import 'package:rida/screens/drawer.dart';

class Basics extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: CustomDrawer(context),
      appBar: AppBar(
        title: Text('Basics'),
      ),
      body: ListView(
        children: [
          ListTile(leading: Icon(Icons.art_track_sharp), title: Text('Snackbar'), onTap: () {
           Navigator.of(context).pushNamed("/basics/snackbar");
          })
        ],
      ),
    );
  }
}