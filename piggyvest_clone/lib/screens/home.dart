

import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final buildContainer = (Color color, IconData icon, String titleText, String subText) {
      return GestureDetector(
          child: Container(
          alignment: Alignment.centerLeft,
          child: ListTile(
            leading: Icon(icon, color: Colors.white,size: 30,),
            title: Text(titleText, style: TextStyle(color: Colors.white),),
            subtitle: Text(subText, style: TextStyle(color: Colors.white, fontSize: 25)),
          ),
          width: MediaQuery.of(context).size.width / 2 + 100,
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color
          ),),
          onTap: () {
            print(color);
          }
          );     
    };

    final _titleFontStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 28);
    final _containerWidgets = <Widget>[
      buildContainer(Colors.blue.shade900, Icons.shield_outlined, 'Total Savings', '\$23,000'),
      buildContainer(Colors.purpleAccent, Icons.analytics, 'Total Investments', '\$3000'),
      buildContainer(Colors.black, Icons.money,'Flex Dollar', '\$10000'),
      buildContainer(Colors.grey.shade400, Icons.video_camera_back, 'Flex Naira', '\$200'),
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
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: 4,
                   itemBuilder: (context, index) {
                     return _containerWidgets[index];
                      
                   },
                 ),
               ),
          ]
          
        ),
      )
    );
  }
}