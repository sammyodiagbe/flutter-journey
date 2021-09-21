import 'package:firebase_core/firebase_core.dart';
import 'package:fireflut/screens/AuthenticationScreenManger.dart';
import 'package:fireflut/screens/Battle.dart';
import 'package:fireflut/screens/authStateCheck.dart';
import 'package:fireflut/screens/loginScreen.dart';
import 'package:fireflut/screens/signupScreen.dart';
import 'package:fireflut/utils/AuthProvider.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider()
          )
      ],
     child: SpellBattle(),
    )
  );
}

class SpellBattle extends StatefulWidget {
  const SpellBattle({ Key? key }) : super(key: key);

  @override
  _SpellBattleState createState() => _SpellBattleState();
}

class _SpellBattleState extends State<SpellBattle> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => Login(),
        'signup': (context) => Signup()
      },
      theme: ThemeData(
        textTheme: GoogleFonts.alataTextTheme(),
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
      home:  Consumer<AuthProvider>(
            builder: (context, appState, _) {
              
               if(appState.getState == AuthenticationState.Authenticated) {
                return BatuGround();
              }
              if(appState.getState == AuthenticationState.Unauthenticated) {
                return AuthWrapper();
              }
              if(appState.getState == AuthenticationState.VerifyingAuthState) {
                 return AuthStateDecider(); 
              }
             return Container();
                      
            },
          )     
         
    );

  }
}