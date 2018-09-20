import 'package:flutter/material.dart';
import 'package:trasit_tracker/widgets/PlaceholderWidget.dart';
import 'package:trasit_tracker/screens/widgets/BusWidget.dart';
import 'package:trasit_tracker/screens/widgets/TrainsWidget.dart';
import 'package:trasit_tracker/screens/widgets/HomeWidget.dart';




class HomeScreen extends StatefulWidget{
  final String title;
  HomeScreen(this.title);
   @override
 State<StatefulWidget> createState() {
    return _HomeScreenState(this.title);
  }
}

class _HomeScreenState extends State<HomeScreen>{
  final String title;
  _HomeScreenState(this.title);

  int _currentIndex = 0;
  final List<Widget> _children = [
        PlaceholderWidget(Colors.white),
        TrainsWidget(),
        PlaceholderWidget(Colors.green)
  ];
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
         new BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Trains'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Busses')
          ),
        ],
      ),
    );
  }
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}