import "package:flutter/material.dart";
import "package:firebase_core/firebase_core.dart";

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
        body: FutureBuilder(
          future: _initialization,
          builder:  (context, snapshot) {
            if(snapshot.hasError) {
              return SafeArea(
                child: Container(child: Center(child: Text('Something went wrong')))
              );
            }
            if(snapshot.connectionState == ConnectionState.done) {
              return SafeArea(
                child: Container(child: Center(child: Text('We are connected to firebase baby')))
              );
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