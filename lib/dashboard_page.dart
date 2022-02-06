import 'package:demo_app/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget{
  _DashboardPageState createState()=> _DashboardPageState();
}
class _DashboardPageState extends State<DashboardPage>{
  int _selectedPosition=0;
  List<Widget> _widgetOptions= <Widget>[
    HomePage(),
    Text("search"),
    Text("Profile"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        automaticallyImplyLeading: false,

      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedPosition),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("Search")),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text("Profile")),
      ],
        onTap: (int position){
          setState(() {
            _selectedPosition= position;
          });
        },
        selectedItemColor: Colors.blueAccent,
        elevation: 5,
        currentIndex: _selectedPosition,
        iconSize: 26,
        
      ),
    );
  }

}