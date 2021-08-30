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
            showDialog(context: context, builder: (_) {
              return AlertDialog (title: Text('Terms and Services'), content: Text("Do you accept this terms"), actions: [
               TextButton(onPressed: () {}, child: Text('Yes')),
               TextButton(onPressed: () {}, child: Text('No')),
              ], elevation: 24, );
            });
            
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