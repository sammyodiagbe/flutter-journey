import "package:flutter/material.dart";
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff279af6)
      ),
      home: LandingPage()
    );
  }
}

class LandingPage extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    final _largeFont = TextStyle(fontSize: 35, color: Colors.white);
    final _smallFont = TextStyle(fontSize: 18, color: Color(0xfff3f3f3));
    final _appBarFont = TextStyle(fontSize: 20);
    return  SafeArea(child: Scaffold
      (
        appBar: AppBar(
          centerTitle: true,
          title: Text('Daily Ui', style: _appBarFont,),
          elevation: 0,
        ),
        body: Container(
          child: ListView(children: [
            Image(image: AssetImage("assets/curious.png")),
            Padding(child: Text("Become a better developer in 100 days.",textAlign: TextAlign.center, style: _largeFont), padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),),
             Padding(child: Text("Daily Ui is a series of daily challenges, design inspirations and neat suprise rewards.",textAlign: TextAlign.center, style: _smallFont), padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),),
              Padding(child: Text("And it is 100% free. Pretty sweet huh?",textAlign: TextAlign.center, style: _smallFont), padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.white,),
                    hintText: 'Email Address',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.orange)
                  ),
                )
              )
          ],
          ),
          decoration: BoxDecoration(color: Color(0xff279af6),),
          height: MediaQuery.of(context).size.height,
          ),
      ),
    );
  }
}