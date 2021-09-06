

import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final buildContainer = (Color color, IconData icon, String titleText, String subText) {
      return GestureDetector(
          child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: ListTile(
            leading: Icon(icon, color: Colors.white,size: 30,),
            title: Text(titleText, style: TextStyle(color: Colors.white),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(subText, style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            
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
    final getStartedWithPiggyVest = () {
      return Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Get Started with piggyvest'),
            Container(
              height: 120,
              margin: EdgeInsets.symmetric(vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text('Get Started', style: TextStyle(fontSize: 28, color: Colors.white),),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(8)
              )
            )
          ],
        ),
      );
    };
    final _titleFontStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 28);
    final _containerWidgets = <Widget>[
      buildContainer(Colors.blue.shade900, Icons.shield_outlined, 'Total Savings', '\$23,000'),
      buildContainer(Colors.purpleAccent, Icons.analytics, 'Total Investments', '\$3000'),
      buildContainer(Colors.black, Icons.money,'Flex Dollar', '\$10000'),
      buildContainer(Colors.grey.shade400, Icons.video_camera_back, 'Flex Naira', '\$200'),
    ];

    final listTile = (String actionText) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
              leading: Icon(Icons.check_circle_outline_outlined, color: Colors.indigo,),
              title: Text(actionText),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                 side:BorderSide(
                   color: Colors.grey,
                   width: 0.8
                   )
                 ),
            )
      );
    };

    final todoList = () {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            listTile('Add your bvn'),
            listTile('Turn on your PiggyBank Autosave.'),
            listTile('Safelock \$40000 for 90 days'),
            listTile('Set your security question.'),

          ],
          ),
      );
    };
    return Scaffold(
      
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              title: Text('Samson', style: _titleFontStyle),
              subtitle: Text('Good morning, wash your hands.'),
              trailing: CircleAvatar(child: Icon(Icons.person, color: Colors.white,), backgroundColor: Colors.indigo ,),
            ),
            
             Container(
               height: 150,
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

               getStartedWithPiggyVest(),
               todoList()
          ]
          
        ),
      )
    );
  }
}

