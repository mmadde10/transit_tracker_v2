import 'package:flutter/material.dart';
import 'package:trasit_tracker/util/color.dart';

class BrownLineListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
     child:ListView(
          children: <Widget>[
            BrownLineListItem("Kimball",true,[]),
            BrownLineListItem("Kedzie",true,[]),
            BrownLineListItem("Francisco",true,[]),
            BrownLineListItem("Rockwell",true,[]),
            BrownLineListItem("Western",true,[]),
            BrownLineListItem("Montrose",false,[]),
            BrownLineListItem("Irving Park",false,[]),
            BrownLineListItem("Cumberland",true,[]),
            BrownLineListItem("Addison",true,[]),
            BrownLineListItem("Belmont",false,[]),
            BrownLineListItem("Logan Square",true,[]),
            BrownLineListItem("California",false,[]),
            BrownLineListItem("Western",false,[]),
            BrownLineListItem("Damen",false,[]),
            BrownLineListItem("Division",false,[]),
            BrownLineListItem("Chicago",false,[]),
            BrownLineListItem("Grand",false,[]),
            BrownLineListItem("Clark/Lake",true,["Brown", "Green","Orange", "Purple", "Pink"]),
            BrownLineListItem("Washington",false,["Red"]),
            BrownLineListItem("Monroe",false,["Red"]),
            BrownLineListItem("Jackson",true,["Brown","Orange", "Purple", "Pink"]),
            BrownLineListItem("LaSalle",false,[]),
            BrownLineListItem("Clinton",false,[]),
            BrownLineListItem("UIC-Halsted",true,[]),
            BrownLineListItem("Racine",false,[]),
            BrownLineListItem("Illinois Medical District",true,[]),
            BrownLineListItem("Western",false,[]),
            BrownLineListItem("Kedzie-Homan",true,[]),
            BrownLineListItem("Pulaski",false,[]),
            BrownLineListItem("Cicero",false,[]),
            BrownLineListItem("Austin",false,[]),
            BrownLineListItem("Oak Park",false,[]),
            BrownLineListItem("Harlem",false,[]),
            BrownLineListItem("Forest Park",true,[]),
          ],
      ),
    );
  }
}

class BrownLineListItem extends StatelessWidget{
  final String stationName;
  final bool isAccessible;
  final List transferColors;

  BrownLineListItem(this.stationName,this.isAccessible,this.transferColors);

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