import "package:flutter/material.dart";

class Savings extends StatelessWidget {


  Widget build(BuildContext context) {

    final _gridItem = (Color color, IconData icon, String title, String subtitle, String price) {
      return Container(
        height: 220,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon),
            SizedBox(height: 20),
            Text(title),
            SizedBox(height: 20),
            Text(subtitle),
            SizedBox(height: 20),
            Text('\$$price')
          ],
        )
      );
    };

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 15, right: 15),
        height: double.infinity,
        
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              title: Text('Savings', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              trailing: IconButton(icon: Icon(Icons.warning_amber_rounded, color: Colors.indigo,), iconSize: 32, onPressed: (){},),
              subtitle: Text('\$28,000', style: TextStyle(fontSize:18, color: Colors.indigo, fontWeight: FontWeight.bold )),
            ),
            SizedBox(
              height: 30
            ),

            Container(
              child: Container(
                child: Row(
                      children: [
                         Expanded(child: _gridItem(Colors.blue.shade100,Icons.shield_outlined,'Piggybank', 'Strict saving automatically weekly or daily', '1200')),
                         SizedBox(width: 20,),
                          Expanded(child: _gridItem(Colors.pink.shade100,Icons.shield_outlined,'Piggybank', 'Safelock 50k', '1200')),
                      ],
                    ),
              ),
            ), 
            SizedBox(height: 20),
            Container(
              child: Container(
                child: Row(
                      children: [
                         Expanded(child: _gridItem(Colors.grey.shade100,Icons.shield_outlined,'Piggybank', 'Strict saving automatically weekly or daily', '1200')),
                         SizedBox(width: 20,),
                          Expanded(child: _gridItem(Colors.green.shade100,Icons.shield_outlined,'Piggybank', 'Strict saving automatically weekly or daily', '1200')),
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