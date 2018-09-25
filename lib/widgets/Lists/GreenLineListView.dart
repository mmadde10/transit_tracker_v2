import 'package:flutter/material.dart';
import 'package:trasit_tracker/util/color.dart';

class GreenLineListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
     child:ListView(
          children: <Widget>[
            GreenLineListItem("Harlem/Lake",true,[]),
            GreenLineListItem("Oak Park", false ,[]),
            GreenLineListItem("Ridgeland",false,[]),
            GreenLineListItem("Austin",false,[]),
            GreenLineListItem("Jefferson Park",true,[]),
            GreenLineListItem("Montrose",false,[]),
            GreenLineListItem("Irving Park",false,[]),
            GreenLineListItem("Cumberland",true,[]),
            GreenLineListItem("Addison",true,[]),
            GreenLineListItem("Belmont",false,[]),
            GreenLineListItem("Logan Square",true,[]),
            GreenLineListItem("California",false,[]),
            GreenLineListItem("Western",false,[]),
            GreenLineListItem("Damen",false,[]),
            GreenLineListItem("Division",false,[]),
            GreenLineListItem("Chicago",false,[]),
            GreenLineListItem("Grand",false,[]),
            GreenLineListItem("Clark/Lake",true,["Brown", "Green","Orange", "Purple", "Pink"]),
            GreenLineListItem("Washington",false,["Red"]),
            GreenLineListItem("Monroe",false,["Red"]),
            GreenLineListItem("Jackson",true,["Brown","Orange", "Purple", "Pink"]),
            GreenLineListItem("LaSalle",false,[]),
            GreenLineListItem("Clinton",false,[]),
            GreenLineListItem("UIC-Halsted",true,[]),
            GreenLineListItem("Racine",false,[]),
            GreenLineListItem("Illinois Medical District",true,[]),
            GreenLineListItem("Western",false,[]),
            GreenLineListItem("Kedzie-Homan",true,[]),
            GreenLineListItem("Pulaski",false,[]),
            GreenLineListItem("Cicero",false,[]),
            GreenLineListItem("Austin",false,[]),
            GreenLineListItem("Oak Park",false,[]),
            GreenLineListItem("Harlem",false,[]),
            GreenLineListItem("Forest Park",true,[]),
          ],
      ),
    );
  }
}

class GreenLineListItem extends StatelessWidget{
  final String stationName;
  final bool isAccessible;
  final List transferColors;

  GreenLineListItem(this.stationName,this.isAccessible,this.transferColors);

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