import 'package:flutter/material.dart';
import 'package:trasit_tracker/widgets/Lists/RedLineList.dart';
import 'package:trasit_tracker/widgets/Lists/BlueLineList.dart';

class StationSelectWidget extends StatelessWidget{
 final String lineColorName;
 final Color lineColor;
 StationSelectWidget(this.lineColorName, this.lineColor);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(lineColorName + ' Line'),
        backgroundColor: lineColor,
      ),
      body: new Container(
        child: checkLineColor(lineColorName),
      )
    );
  }
  Widget checkLineColor(lineColorName){
    switch(lineColorName) { 
      case "Red": { 
          return new RedLineListView();
      } 
      break; 
      
      case "Blue": { 
          return new BlueLineListView();
      } 
      break; 
      case "Brown": { 
          return new RedLineListView();
      } 
      break; 
      case "Green": {  
          return new RedLineListView();
      } 
      break; 

      case "Orange": { 
          return new RedLineListView();
      } 
      break; 
      case "Pink": { 
          return new RedLineListView();
      } 
      break; 
      case "Purple": { 
          return new RedLineListView();
      } 
      break; 
      case "Yellow": { 
          return new RedLineListView();
      } 
      break; 
          
      default: { 
          return new RedLineListView();  
      }
      break; 
    } 
  }
}