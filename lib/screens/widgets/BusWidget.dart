import 'package:flutter/material.dart';
import 'package:trasit_tracker/widgets/LineGridview.dart';

class BusWidget extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Container(
    child: new LineGridView(),
   );
  }
}