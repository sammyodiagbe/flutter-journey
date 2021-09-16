import 'package:fireflut/screens/loginScreen.dart';
import 'package:fireflut/screens/signupScreen.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => Login(),
        'signup': (context) => Signup()
      },
      theme: ThemeData(
        textTheme: GoogleFonts.rubikTextTheme(),
        primaryColor: Color(0xff1E3163),
        iconTheme: IconThemeData(
          size: 20
        ),
        canvasColor: Color(0xff1E3163),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xff57CC99),
            padding: EdgeInsets.all(15)
          )
        ),
        
      ),
      home: Login()
    );
  }
}