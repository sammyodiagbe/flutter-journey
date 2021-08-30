import "package:flutter/material.dart";

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
         children: [ ListTile(
           leading: Text('Design'),
           onTap: () {
              Navigator.of(context).pushNamed("/basics");
           },
         )]

        ),
      ),
      appBar: AppBar(
        title: Text("Flutter journey"),
        
      ),
    );
  }
}