import "package:flutter/material.dart";

class Basics extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Basics'),
        leading: Icon(Icons.design_services),
      ),
      body: ListView(
        children: [
          ListTile(leading: Icon(Icons.art_track_sharp), title: Text('Snackbar'), onTap: () {
           Navigator.of(context).pushNamed("/snackbar");
          })
        ],
      ),
    );
  }
}