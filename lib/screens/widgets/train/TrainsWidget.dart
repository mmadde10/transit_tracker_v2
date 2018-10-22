import 'package:flutter/material.dart';
import 'StationSelectWidget.dart';

class TrainsWidget extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Container(
    child: new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 3,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        LineGridViewCard("Red", Color(0xFFC60C30), Color(0xFFFFFFFF)),
        LineGridViewCard("Blue",  Color(0xFF00A1DE), Color(0xFFFFFFFF)),
        LineGridViewCard("Brown", Color(0xFF62361B), Color(0xFFFFFFFF)),
        LineGridViewCard("Green", Color(0xFF009B3A), Color(0xFFFFFFFF)),
        LineGridViewCard("Orange", Color(0xFFF9461C), Color(0xFFFFFFFF)),
        LineGridViewCard("Pink", Color(0xFFE27EA6), Color(0xFFFFFFFF)),
        LineGridViewCard("Purple", Color(0xFF522398),Color(0xFFFFFFFF)),
        LineGridViewCard("Yellow", Color(0xFFF9E300), Colors.black),
      ],
    ),
   );
  }
}

class LineGridViewCard extends StatelessWidget {
  final String name;
  final Color color;
  final Color textColor;
  LineGridViewCard(this.name,this.color, this.textColor);
   
   @override
   Widget build(BuildContext context){
    return new InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StationSelectWidget(name,color)),
        );
      },
      child: Card(
      color: color,
        elevation: 1.5,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
             new Padding(
              padding: new EdgeInsets.fromLTRB(0.0,30.0,0.0,0.0),
                child: new Center(
                  child: new Icon(
                    Icons.train,
                    size:50.0,
                    color: textColor
                  )
                )
             ),
             new Padding(
              padding: new EdgeInsets.fromLTRB(00.0,25.0,0.0,8.0),
              child: new Center(
                child: new Text(
                  name,
                  style:TextStyle(
                    fontSize: 20.0,
                      fontFamily: 'Roboto',
                      color: textColor
                  ),
                ),
              ),
            ),
          ],
        )
      )
    );
   }
}