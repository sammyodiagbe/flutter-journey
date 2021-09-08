import 'package:flutter/material.dart';
import 'package:piggyvest_clone/screens/home.dart';
import 'package:piggyvest_clone/screens/savings.dart';
import 'package:piggyvest_clone/screens/school.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Alata'
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Savings(),
    Invest(),
    Text(
      'Index 3: Profile',
    ),
    Text(
      'Index 4: Add photo',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', ),

        BottomNavigationBarItem(icon: Icon(Icons.track_changes), label: 'Savings',),
        BottomNavigationBarItem(icon: Icon(Icons.savings), label: 'Invest',),
        BottomNavigationBarItem(icon: Icon(Icons.apps_outlined), label: 'Apps',),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account',),
      ],
      currentIndex: _selectedIndex,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.indigo[800],
      unselectedItemColor: Colors.grey,
      enableFeedback: false,

      showUnselectedLabels: true,
      iconSize: 24,
        onTap: _onItemTapped
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
