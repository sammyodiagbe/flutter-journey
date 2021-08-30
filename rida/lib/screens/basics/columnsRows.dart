import "package:flutter/material.dart";

class ColumsRows extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Columns and Rows")
      ),
      body: ListView(
        children: [
          Padding(child: Center(child: Text("Column")),padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),),
          Container(
            height: 350,
            decoration: BoxDecoration(color: Colors.black),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Column(children: [
            
              Container(child: Center(child: Text('Box 1')), decoration: BoxDecoration(color: Colors.orange), height: 100, width: 100),
              Container(child: Center(child: Text('Box 1')), decoration: BoxDecoration(color: Colors.cyan), height: 100, width: 100),
              Container(child: Center(child: Text('Box 1')), decoration: BoxDecoration(color: Colors.blue), height: 100, width: 100),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            ),
          

          ),
          Padding(child: Center(child: Text("Row")),padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),),
          Container(
            height: 350,
            decoration: BoxDecoration(color: Colors.black),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(children: [
            
              Container(child: Center(child: Text('Box 1')), decoration: BoxDecoration(color: Colors.orange), height: 100, width: 100),
              Container(child: Center(child: Text('Box 1')), decoration: BoxDecoration(color: Colors.cyan), height: 100, width: 100),
              Container(child: Center(child: Text('Box 1')), decoration: BoxDecoration(color: Colors.blue), height: 100, width: 100),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            ),
          

          )
        ],
      ),
    );
  }
}