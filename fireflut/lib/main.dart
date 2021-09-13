import 'package:fireflut/appScreen.dart';
import "package:flutter/material.dart";
import "package:firebase_core/firebase_core.dart";
import "package:cloud_firestore/cloud_firestore.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}


class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);



  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: () {
        //     _users.add(
        //       {
        //         'talk': 'Some random talks right here',
        //         'bywhom': true
        //       }
        //     ).then((value) => print('User added'))
        //     .catchError((error) => print('There was an error $error'));
        //   },
        // ),
        body: FutureBuilder(
          future: _initialization,
          builder:  (context, snapshot) {
            if(snapshot.hasError) {
              return SafeArea(
                child: Container(child: Center(child: Text('Something went wrong')))
              );
            }
            if(snapshot.connectionState == ConnectionState.done) {
              return AppScreen();
            }
          
            return SafeArea(
                child: Container(
                  child: Center(
                    child: CircularProgressIndicator()
                    )
                    )
              );
          },
        ),
      ),
    );
  }
}