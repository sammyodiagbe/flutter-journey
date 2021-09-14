import 'package:fireflut/utils/sizes.dart';
import "package:flutter/material.dart";

class Login extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        height: double.infinity,
        padding: EdgeInsets.all(19),
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              
              child: Center(
                child: Text('Login into your account', style: loginHeaderSize,)
                )
              )
          ],
        ),
        )
    );
  }
}