import "package:flutter/material.dart";

class Invest extends StatefulWidget {
  const Invest({ Key? key }) : super(key: key);

  @override
  _InvestState createState() => _InvestState();
}

class _InvestState extends State<Invest> with SingleTickerProviderStateMixin{
//  late TabController _tabController;


//   @override
//   void initState() {

//     _tabController = TabController(length: 3, vsync: this);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
  @override
  Widget build(BuildContext context) {
    final _titleFontStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.purple.shade500);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Container(
    
          height: double.infinity,
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(height: 20),
              ListTile(
                title: Text('Samson', style: _titleFontStyle),
                subtitle: Text('\$200', style: TextStyle(color: Colors.pink, fontSize: 18),),
                trailing:  Icon(Icons.error_outline, color: Colors.pink, size: 28,),
              ),
              SizedBox(height: 20),
              Image(image: AssetImage("assets/image.png"),),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade300,
                ),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelStyle: TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple.shade500
                  ),
                  tabs: [
                    Tab(child: Text('Active'),),
                    Tab(child: Text('Explore')),
                    Tab(child: Text('Mature'))
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                height:250,
                child: TabBarView(
                  
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple.shade500,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.trending_up, color: Colors.white, size: 28),
                          SizedBox(height: 10),
                          Text('Try invesify!', style: TextStyle(color: Colors.white),),
                          SizedBox(height: 10),
                          Text('Join other piggyvest users to co-invest in well-vetted & amazing investment opportunities, starting for as little as \$4000.', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green.shade500,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.trending_up, color: Colors.white, size: 28),
                          SizedBox(height: 10),
                          Text('Try invesify!', style: TextStyle(color: Colors.white),),
                          SizedBox(height: 10),
                          Text('Join other piggyvest users to co-invest in well-vetted & amazing investment opportunities, starting for as little as \$4000.', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade500,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.trending_up, color: Colors.white, size: 28),
                          SizedBox(height: 10),
                          Text('Try invesify!', style: TextStyle(color: Colors.white),),
                          SizedBox(height: 10),
                          Text('Join other piggyvest users to co-invest in well-vetted & amazing investment opportunities, starting for as little as \$4000.', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    )
                  ],
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}