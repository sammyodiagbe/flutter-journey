import "package:flutter/material.dart";


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final _titleFontStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 24);
    return Scaffold(
      
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
        child: ListView(
          children: [
            ListTile(
              title: Text('Samson', style: _titleFontStyle),
              subtitle: Text('Good morning, wash your hands.'),
              trailing: CircleAvatar(child: Icon(Icons.person, color: Colors.white,), backgroundColor: Colors.indigo ,),
            )
          ]
          
        ),
      )
    );
  }
}