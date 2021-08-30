import "package:flutter/material.dart";

class Design extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Design'),
        leading: Icon(Icons.art_track_outlined),
      ),
      body: ListView(
        children: [
          ListTile(leading: Icon(Icons.design_services), onTap: () {
           
          })
        ],
      ),
    );
  }
}