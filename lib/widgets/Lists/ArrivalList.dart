import 'package:flutter/material.dart';
import 'package:trasit_tracker/services/arrivals.cta.dart';
import 'package:trasit_tracker/widgets/ArrivalGridview.dart';

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