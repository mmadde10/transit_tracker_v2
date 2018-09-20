import 'package:flutter/material.dart';
import 'package:trasit_tracker/widgets/LineGridview.dart';

class TrainsWidget extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Container(
    child: new LineGridView(),
   );
  }
}