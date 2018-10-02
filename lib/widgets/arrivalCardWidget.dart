import 'package:flutter/material.dart';

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
                    //calculateArrivalTime(data),
                    "1", //Placement text for minutes
                    style: new TextStyle(
                      fontSize: 50.0,
                      fontFamily: 'Roboto',
                      color: new Color(0xFFFFFFFF),
                    )
                ),
              )
          ),
          new Padding(padding: new EdgeInsets.fromLTRB(0.0,0.0,0.0,8.0),
              child: new Center(
                  child: new Text(
                      //displayTimeUnits(data), 
                      "placehodelr",
                      style: new TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Roboto',
                        color: new Color(0xFFFFFFFF),
                      )
                  )
              ),
          ),
          new Padding(
              padding: new EdgeInsets.fromLTRB(0.0,45.0,0.0,8.0),
            child: new Center(
              child: new Text(
                    //data.destinationName,
                    "test",
                    style: new TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Roboto',
                      color: new Color(0xFFFFFFFF),
                    )
                )
            )
          )
        ],
      ),
      //color: trainColors['rt'],
  );
  }
}