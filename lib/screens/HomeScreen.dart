import 'package:flutter/material.dart';
import 'package:trasit_tracker/widgets/PlaceholderWidget.dart';
import 'package:trasit_tracker/screens/widgets/train/TrainsWidget.dart';

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
        TrainsWidget(),
        PlaceholderWidget(Colors.white),
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
            icon: new Icon(Icons.train),
            title: new Text('Trains'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
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