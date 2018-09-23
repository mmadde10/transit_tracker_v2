import 'package:flutter/material.dart';
import 'package:trasit_tracker/util/color.dart';

class BlueLineListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
     child:ListView(
          children: <Widget>[
            BlueLineListItem("O'Hare",true,[]),
            BlueLineListItem("Rosement",true,[]),
            BlueLineListItem("Cumberland",true,[]),
            BlueLineListItem("Harlem",true,[]),
            BlueLineListItem("Jefferson Park",true,[]),
            BlueLineListItem("Montrose",false,[]),
            BlueLineListItem("Irving Park",false,[]),
            BlueLineListItem("Cumberland",true,[]),
            BlueLineListItem("Addison",true,[]),
            BlueLineListItem("Belmont",false,[]),
            BlueLineListItem("Logan Square",true,[]),
            BlueLineListItem("California",false,[]),
            BlueLineListItem("Western",false,[]),
            BlueLineListItem("Damen",false,[]),
            BlueLineListItem("Division",false,[]),
            BlueLineListItem("Chicago",false,[]),
            BlueLineListItem("Grand",false,[]),
            BlueLineListItem("Clark/Lake",true,["Brown", "Green","Orange", "Purple", "Pink"]),
            BlueLineListItem("Washington",false,["Red"]),
            BlueLineListItem("Monroe",false,["Red"]),
            BlueLineListItem("Jackson",true,["Brown","Orange", "Purple", "Pink"]),
            BlueLineListItem("LaSalle",false,[]),
            BlueLineListItem("Clinton",false,[]),
            BlueLineListItem("UIC-Halsted",true,[]),
            BlueLineListItem("Racine",false,[]),
            BlueLineListItem("Illinois Medical District",true,[]),
            BlueLineListItem("Western",false,[]),
            BlueLineListItem("Kedzie-Homan",true,[]),
            BlueLineListItem("Pulaski",false,[]),
            BlueLineListItem("Cicero",false,[]),
            BlueLineListItem("Austin",false,[]),
            BlueLineListItem("Oak Park",false,[]),
            BlueLineListItem("Harlem",false,[]),
            BlueLineListItem("Forest Park",true,[]),
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
  //TODO Make method to render other icons such as airport
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