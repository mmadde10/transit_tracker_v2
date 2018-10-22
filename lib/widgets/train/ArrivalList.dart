import 'package:flutter/material.dart';
import 'package:trasit_tracker/services/arrivals.cta.dart';
import 'ArrivalCard.dart';

class ArrivalList extends StatelessWidget{
  final dynamic mapID;
  ArrivalList(this.mapID);

  @override
  Widget build(BuildContext context){
    return new Container(
      child: new FutureBuilder<Arrival>(
       future: fetchArrival(mapID),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                  return ArrivalGridView(snapshot);
              } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
        ),
    );
  }
}

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