import 'package:fireflut/utils/AuthProvider.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';

class BatuGround extends StatefulWidget {
  const BatuGround({ Key? key }) : super(key: key);

  @override
  _BatuGroundState createState() => _BatuGroundState();
}

class _BatuGroundState extends State<BatuGround> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: [
                Text('Authenticated baby'),
                SizedBox(height: 20),
                Consumer<AuthProvider>(
                  builder: (context, provider, _) {
                    return ElevatedButton(child: Text('Logout'), onPressed: () {
                      provider.logout();
                    },);
                  },
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}