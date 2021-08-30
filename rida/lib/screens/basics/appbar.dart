import "package:flutter/material.dart";


class Appbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter appbar"),
        titleSpacing: 1,
        elevation: 0,
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.notification_add_outlined)),
          IconButton(onPressed: null,icon: Icon(Icons.verified_user))
        ],
      ),
    );
  }
}