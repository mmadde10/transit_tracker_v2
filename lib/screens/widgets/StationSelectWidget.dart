import 'package:flutter/material.dart';

class StationSelectWidget extends StatelessWidget{
 final Color color;
 StationSelectWidget(this.color);
@override
 Widget build(BuildContext context) {
   return Container(
     color: color,
   );
 }
}