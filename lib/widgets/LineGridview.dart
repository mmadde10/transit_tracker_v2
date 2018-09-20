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
        LineGridViewCard("Red Line", Color(0xFFC60C30)),
        LineGridViewCard("Blue Line",  Color(0xFF00A1DE)),
        LineGridViewCard("Brown Line", Color(0xFF62361B)),
        LineGridViewCard("Green Line", Color(0xFF009B3A)),
        LineGridViewCard("Orange Line", Color(0xFFF9461C)),
        LineGridViewCard("Pink Line", Color(0xFFE27EA6)),
        LineGridViewCard("Purple Line", Color(0xFF522398)),
        LineGridViewCard("Yellow Line", Color(0xFFF9E300)),
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
            new Center(
              child: new Text(
                name,
                style:TextStyle(
                  color: Colors.grey[50]
                ),
              ),
            ),
            new Center(
              child: new Icon(
                Icons.train,
              )
            )
          ],
        )
        );
   }
}