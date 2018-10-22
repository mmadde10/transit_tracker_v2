import 'package:flutter/material.dart';
import 'package:trasit_tracker/util/color.dart';
import 'package:trasit_tracker/util/time.dart';

class ArrivalCard extends StatelessWidget{
  final dynamic data;
  ArrivalCard(this.data);

  @override
  Widget build(BuildContext context) {
  return new Card(
      elevation: 1.5,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          new Padding(
              padding: new EdgeInsets.fromLTRB(00.0,25.0,8.0,8.0),
              child: new Center(
                child: new Text(
                    calculateArrivalTime(data),
                    style: new TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    )
                ),
              )
          ),
          new Padding(padding: new EdgeInsets.fromLTRB(0.0,0.0,0.0,8.0),
              child: new Center(
                  child: new Text(
                      displayTimeUnits(data), 
                      style: new TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                      )
                  )
              ),
          ),
          new Padding(
              padding: new EdgeInsets.fromLTRB(0.0,70.0,0.0,8.0),
            child: new Center(
              child: new Text(
                    data['destNm'].toString(),
                    style: new TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    )
                )
            )
          )
        ],
      ),
      color: colorAbrv[data['rt']]
  );
  }
}