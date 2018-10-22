import 'package:flutter/material.dart';
import 'arrivalCardWidget.dart';

List<Widget> addArrivalTile(snapshot){
  List<Widget> arrivalTileList = new List();
  for(var i in snapshot.data.response.keys){
    arrivalTileList.add(ArrivalCard(snapshot.data.response[i]));
  }
  return arrivalTileList;
}

class ArrivalGridView extends StatelessWidget{
 final dynamic data;
 ArrivalGridView(this.data);

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 0.80,
      children: addArrivalTile(this.data),
    );
  }
}