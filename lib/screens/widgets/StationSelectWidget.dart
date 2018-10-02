import 'package:flutter/material.dart';
import 'package:trasit_tracker/widgets/Lists/LineList.dart';

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
          return new LineListView("red");
      } 
      break; 
      
      case "Blue": { 
          return new LineListView("blue");
      } 
      break; 
      case "Brown": { 
          return new LineListView("brn");
      } 
      break; 
      case "Green": {  
          return new LineListView("g");
      } 
      break; 

      case "Orange": { 
          return new LineListView("o");
      } 
      break; 
      case "Pink": { 
          return new LineListView("pnk");
      } 
      break; 
      case "Purple": { 
          return new LineListView("pexp");
      } 
      break; 
      case "Yellow": { 
          return new LineListView("y");
      } 
      break; 
          
      default: { 
          return new LineListView("blue");  
      }
      break; 
    } 
  }
}