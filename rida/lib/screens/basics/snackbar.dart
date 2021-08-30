import "package:flutter/material.dart";

class Snackbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbar'),),
      body: Container(child: Center(child: ElevatedButton(child: Text('Click me'), onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Hello code finder")));
      },),),),
    );
  }
}