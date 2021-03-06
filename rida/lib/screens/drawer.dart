import "package:flutter/material.dart";

CustomDrawer(BuildContext context) {
  return Drawer(
        
        child: ListView(
         children: [ ListTile(
           leading: Text('Home'),
           onTap: () {
              Navigator.of(context).pushNamed("/");
           },
         ), ListTile(
           leading: Text('Basic Widgets'),
           onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil("/basics", (route) => false);
           },
         ),
         ]

        ),
      );
}