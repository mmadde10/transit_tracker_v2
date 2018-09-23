import 'package:flutter/material.dart';
import 'package:trasit_tracker/util/color.dart';

class RedLineListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
     child:ListView(
          children: <Widget>[
            RedLineListItem("Howard",true,["Yellow","Purple"]),
            RedLineListItem("Jarvis",true,[]),
            RedLineListItem("Morse",false,[]),
            RedLineListItem("Loyola",true,[]),
            RedLineListItem("Granville",false,[]),
            RedLineListItem("Thorndale",false,[]),
            RedLineListItem("Bryn Mawr",true,[]),
            RedLineListItem("Argyle",false,[]),
            RedLineListItem("Lawrence",false,[]),
            RedLineListItem("Wilson",true,["Purple"]),
            RedLineListItem("Sheridan",false,[]),
            RedLineListItem("Addison",true,[]),
            RedLineListItem("Belmont",true,["Brown","Purple"]),
            RedLineListItem("Fullerton",true,["Brown","Purple"]),
            RedLineListItem("North/Clybourn",false,[]),
            RedLineListItem("Clark/Division",true,[]),
            RedLineListItem("Chicago",true,[]),
            RedLineListItem("Grand",true,[]),
            RedLineListItem("Lake",true,["Brown", "Green", "Orange", "Pink", "Purple","Blue"]),
            RedLineListItem("Monroe",true,[]),
            RedLineListItem("Jackson",true,["Brown", "Orange", "Pink", "Purple","Blue"]),
            RedLineListItem("Harrison",true,[]),
            RedLineListItem("Roosevelt",true,["Orange", "Green"]),
            RedLineListItem("Cermak-Chinatown",true,[]),  
            RedLineListItem("Sox-35th",true,[]), 
            RedLineListItem("47th",true,[]),
            RedLineListItem("Garfield",true,[]),
            RedLineListItem("63rd",true,[]),
            RedLineListItem("69th",true,[]), 
            RedLineListItem("87th",true,[]),
            RedLineListItem("95th/Dan Ryan",true,[])
          ],
        ),
    );
  }
}

class RedLineListItem extends StatelessWidget{
  final String stationName;
  final bool isAccessible;
  final List transferColors;

  RedLineListItem(this.stationName,this.isAccessible,this.transferColors);

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