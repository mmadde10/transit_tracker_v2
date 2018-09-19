import 'package:flutter/material.dart';

class TrainsWidget extends StatelessWidget {
 final Color color;

 TrainsWidget(this.color);

 @override
 Widget build(BuildContext context) {
   return Container(
     color: color,
   );
  }
}