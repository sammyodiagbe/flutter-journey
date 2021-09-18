import 'package:fireflut/screens/loginScreen.dart';
import "package:flutter/material.dart";

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Login()
    );
  }
}