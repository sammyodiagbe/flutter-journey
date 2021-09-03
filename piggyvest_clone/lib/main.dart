import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
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

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
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
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', ),

        BottomNavigationBarItem(icon: Icon(Icons.app_blocking), label: 'blocking',),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School',),
        BottomNavigationBarItem(icon: Icon(Icons.verified_user_rounded), label: 'Profile',),
        BottomNavigationBarItem(icon: Icon(Icons.add_a_photo), label: 'Add photo',),
      ],
      currentIndex: _selectedIndex,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.indigo[800],
      unselectedItemColor: Colors.grey,
      enableFeedback: false,

      showUnselectedLabels: true,
      iconSize: 30,
        onTap: _onItemTapped
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex),),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
