import 'package:flutter/material.dart';

class LineGridView extends StatelessWidget{
  @override
 Widget build(BuildContext context) {
   return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 3,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        LineGridViewCard("Red", Color(0xFFC60C30)),
        LineGridViewCard("Blue",  Color(0xFF00A1DE)),
        LineGridViewCard("Brown", Color(0xFF62361B)),
        LineGridViewCard("Green", Color(0xFF009B3A)),
        LineGridViewCard("Orange", Color(0xFFF9461C)),
        LineGridViewCard("Pink", Color(0xFFE27EA6)),
        LineGridViewCard("Purple", Color(0xFF522398)),
        LineGridViewCard("Yellow", Color(0xFFF9E300)),
      ],
  );
 }
}

class LineGridViewCard extends StatelessWidget {
  final String name;
  final Color color;
  LineGridViewCard(this.name,this.color);
   
   @override
   Widget build(BuildContext context){
    return new Card(
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
                    color: new Color(0xFFFFFFFF)
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
                      color: new Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        )
      );
   }
}