import 'package:flutter/material.dart';
import 'package:trasit_tracker/util/color.dart';
import 'package:trasit_tracker/widgets/Lists/ArrivalList.dart';

class StationWidget extends StatelessWidget{
  final dynamic mapID;
  final dynamic stationName;
  final dynamic trainColor;
  StationWidget(this.stationName, this.mapID, this.trainColor);

@override
 Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(
        title: new Text(stationName),
       backgroundColor: trainColors[trainColor],
      ),
     body: new Container(
       child: new ArrivalList(mapID),
     )
   );
 }
}