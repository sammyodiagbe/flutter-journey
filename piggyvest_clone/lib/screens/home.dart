

import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final buildContainer = (double height, Color color) {
      return Container(
        height: height,
        width: MediaQuery.of(context).size.width / 2 + 50,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color
        ),
        );
       
    };

    final _titleFontStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 28);
    final _containerWidgets = <Widget>[
      buildContainer(60, Colors.indigo),
      buildContainer(60, Colors.purple),
      buildContainer(60, Colors.pink),
      buildContainer(60, Colors.orange),
    ];
    return Scaffold(
      
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              title: Text('Samson', style: _titleFontStyle),
              subtitle: Text('Good morning, wash your hands.'),
              trailing: CircleAvatar(child: Icon(Icons.person, color: Colors.white,), backgroundColor: Colors.indigo ,),
            ),
            
             Container(
               height: 160,
               padding: EdgeInsets.symmetric(vertical: 20),
               width: double.infinity,
               child: Scrollbar(
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: 4,
                   itemBuilder: (context, index) {
                     return _containerWidgets[index];
                      
                   },
                 ),
               ),
             )
          ]
          
        ),
      )
    );
  }
}