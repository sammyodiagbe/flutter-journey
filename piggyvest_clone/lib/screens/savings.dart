import "package:flutter/material.dart";

class Savings extends StatelessWidget {


  Widget build(BuildContext context) {

    final _gridItem = (Color color,Color textColorAndIconColor, IconData icon, String title, String subtitle, String price) {
      return Container(
        height: 200,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: textColorAndIconColor),
            SizedBox(height: 15),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: textColorAndIconColor),),
            SizedBox(height: 10),
            Expanded(child: Text(subtitle)),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('\$$price')
              )
          ],
        )
      );
    };

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 30),
        height: double.infinity,
        
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              title: Text('Savings', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              trailing: IconButton(icon: Icon(Icons.error_outline, color: Colors.indigo,), iconSize: 32, onPressed: (){},),
              subtitle: Text('\$28,000', style: TextStyle(fontSize:18, color: Colors.indigo, fontWeight: FontWeight.bold )),
            ),
            SizedBox(
              height: 30
            ),
            Container(child: Image(image: AssetImage('assets/image.png'),),),
            SizedBox(height: 20),
            Container(
              child: Container(
                child: Row(
                      children: [
                         Expanded(child: _gridItem(Colors.blue.shade100, Colors.blue.shade400,Icons.shield_outlined,'Piggybank', 'Strict saving automatically weekly or daily', '1200')),
                         SizedBox(width: 20,),
                          Expanded(child: _gridItem(Colors.pink.shade100,Colors.pink.shade400,Icons.video_camera_back_outlined,'Flex Naira', 'Flexible savings for emergencies, free transfers, withdrawals etc.', '50')),
                      ],
                    ),
              ),
            ), 
            SizedBox(height: 20),
            Container(
              child: Container(
                child: Row(
                      children: [
                         Expanded(child: _gridItem(Colors.grey.shade100,Colors.blue.shade400,Icons.lock_outlined,'Safelock', 'Lock funds to avoid temptation, upfront interest, up to 13% p.a.', '300')),
                         SizedBox(width: 20,),
                          Expanded(child: _gridItem(Colors.green.shade100,Colors.green.shade400,Icons.track_changes,'Piggybank', 'Reach your individual saving goals. 9% p.a', '1200')),
                      ],
                    ),
              ),
            ),
            // Container(
            //   height: 300,
            //   color: Colors.cyan,
            //   child: GridView.count(
            //     shrinkWrap: true,
                
            //     crossAxisCount: 2,
            //     mainAxisSpacing: 20,
            //     crossAxisSpacing: 20,
            //     children: [
            //       _gridItem(Colors.blue.shade100,Icons.shield_outlined,'Piggybank', 'Strict saving automatically weekly or daily', '1200'),
            //       _gridItem(Colors.pink.shade100,Icons.shield_outlined,'Piggybank', 'Strict saving automatically weekly or daily', '1200'),
            //       _gridItem(Colors.grey.shade100,Icons.shield_outlined,'Piggybank', 'Strict saving automatically weekly or daily', '1200'),
            //       _gridItem(Colors.green.shade100,Icons.shield_outlined,'Piggybank', 'Strict saving automatically weekly or daily', '1200'),
                  
            //   ],),
            // )
          ],
        )
      ),
    );
  }
}