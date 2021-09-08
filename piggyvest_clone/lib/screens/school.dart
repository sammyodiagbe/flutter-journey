import "package:flutter/material.dart";

class Invest extends StatefulWidget {
  const Invest({ Key? key }) : super(key: key);

  @override
  _InvestState createState() => _InvestState();
}

class _InvestState extends State<Invest> with SingleTickerProviderStateMixin{
 late TabController _tabController;


  @override
  void initState() {

    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final _titleFontStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 28);

    return SafeArea(
      child: Container(
        height: double.infinity,
        child: ListView(
          children: [
            SizedBox(height: 20),
            ListTile(
              title: Text('Samson', style: _titleFontStyle),
              subtitle: Text('\$200'),
              trailing:  Icon(Icons.error_outline, color: Colors.indigo,),
            ),
            SizedBox(height: 20),
            Image(image: AssetImage("assets/image.png"),),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}