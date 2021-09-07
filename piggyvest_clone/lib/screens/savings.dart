import "package:flutter/material.dart";

class Savings extends StatelessWidget {


  Widget build(BuildContext context) {

    final _gridItem = (Color color, IconData icon, String title, String subtitle, String price) {
      return Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          children: [
            Icon(icon),
            SizedBox(height: 40),
            Text(title),
            SizedBox(height: 40),
            Text(subtitle),
            SizedBox(height: 60),
            Text('\$$price')
          ],
        )
      );
    };

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        height: double.infinity,
        child: ListView(
          children: [
            ListTile(
              title: Text('Savings', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              trailing: IconButton(icon: Icon(Icons.warning_amber_rounded, color: Colors.indigo,), iconSize: 32, onPressed: (){},),
              subtitle: Text('\$28,000', style: TextStyle(fontSize:18, color: Colors.indigo, fontWeight: FontWeight.bold )),
            ),
            SizedBox(
              height: 100
            ),
            GridView.count(
              crossAxisCount: 2,
              
              children: [
                _gridItem(Colors.blue.shade200,Icons.shield_outlined,'Piggybank', 'Strict saving automatically weekly or daily', '1200'),
                _gridItem(Colors.pink.shade200,Icons.shield_outlined,'Piggybank', 'Strict saving automatically weekly or daily', '1200'),
                _gridItem(Colors.grey.shade200,Icons.shield_outlined,'Piggybank', 'Strict saving automatically weekly or daily', '1200'),
                _gridItem(Colors.green.shade200,Icons.shield_outlined,'Piggybank', 'Strict saving automatically weekly or daily', '1200'),
                
            ],)
          ],
        )
      ),
    );
  }
}