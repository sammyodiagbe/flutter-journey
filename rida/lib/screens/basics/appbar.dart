import "package:flutter/material.dart";


class Appbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter appbar"),
        titleSpacing: 1,
        elevation: 0,
        actionsIconTheme: IconThemeData(
          size: 18
        ),
        actions: [
          IconButton(onPressed: () {
            AlertDialog (title: Text('Some message should appear here'),);
          }, icon: Icon(Icons.notification_add_outlined)),
          IconButton(onPressed: () {},icon: Icon(Icons.verified_user))
        ],
      ),
      body: Container(
        child: Center(child: Text('Understanding how flutter appbar works.'),),
      )
    );
  }
}