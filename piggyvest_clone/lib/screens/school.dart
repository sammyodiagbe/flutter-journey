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

    _tabController = TabController(length: 3, vsync: this);
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
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.shade300,
              ),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelStyle: TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.black,
                onTap: ( index) {
                  print(index);
                },
                indicator: BoxDecoration(
                  borderRadius: _tabController.index == 0 ? BorderRadius.only(bottomLeft: Radius.circular(25), topLeft: Radius.circular(25)) : _tabController.index == 2 ? BorderRadius.only(bottomRight: Radius.circular(25), topRight: Radius.circular(25)) : BorderRadius.circular(0),
                  color: Colors.pink
                ),
                tabs: [
                  Tab(child: Text('Active'),),
                  Tab(child: Text('Explore')),
                  Tab(child: Text('Mature'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}