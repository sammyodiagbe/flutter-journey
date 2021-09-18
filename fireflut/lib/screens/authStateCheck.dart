import "package:flutter/material.dart";

class AuthStateDecider extends StatelessWidget {
  const AuthStateDecider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text('Brainbatu', style: TextStyle(color: Colors.white, fontSize: 35))
          ),
        ),
      )
    );
  }
}