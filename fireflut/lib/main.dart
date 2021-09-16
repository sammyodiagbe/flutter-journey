import 'package:firebase_core/firebase_core.dart';
import 'package:fireflut/screens/loginScreen.dart';
import 'package:fireflut/screens/signupScreen.dart';
import 'package:fireflut/utils/AuthProvider.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      home: Scaffold(
        body: Container(
          child: FutureBuilder(
            future: _initialization,
            
            builder: (context,snapshot){
              if(snapshot.connectionState == ConnectionState.done) {
                return Container(
              child: Consumer<AuthProvider>(
                builder: (context, appState, _) {
                  if(appState.getState == AuthenticationState.Unauthenticated) {
                    return Login();
                  }
                  return Text('Hello bitches');
                },
              ),
            );
      
              }
              return Center(
                child: CircularProgressIndicator()
              );
            }
          ),
        ),
      ),
    );
  }
}