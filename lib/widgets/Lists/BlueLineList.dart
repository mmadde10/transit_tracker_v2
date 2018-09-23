import 'package:flutter/material.dart';
import 'package:trasit_tracker/util/color.dart';

class BlueLineListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
     child:ListView(
          children: <Widget>[
            BlueLineListItem("O'Hare",true,["Red"])
          ],
      ),
    );
  }
}

class BlueLineListItem extends StatelessWidget{
  final String stationName;
  final bool isAccessible;
  final List transferColors;

  BlueLineListItem(this.stationName,this.isAccessible,this.transferColors);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: Icon(Icons.train),
      trailing: renderAccesable(isAccessible),
      title: new Text(stationName),
      subtitle: renderTransfers(transferColors)
    );
  }
  renderAccesable(isAccessible){
    if(isAccessible){
      return Icon(Icons.accessible);
    }
  }
  Widget renderTransfers(transferColors){
     List<Widget> list = new List<Widget>();
     for(var i = 0; i < transferColors.length; i++){
        list.add(
          new Icon(
            Icons.train,
            size: 20.0,
            color: lineColors[transferColors[i]]));
    }
    return new Row(children: list);
  }
}