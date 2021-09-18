import "package:flutter/material.dart";

class AuthStateDecider extends StatelessWidget {
  const AuthStateDecider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xff1E3163),
        body: Container(
          child: Center(
            child: Text('Brainbatu', style: TextStyle(color: Colors.white, fontSize: 40))
          ),
        ),
      );
  }
}