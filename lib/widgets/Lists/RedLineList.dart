import 'package:flutter/material.dart';
import 'package:trasit_tracker/util/color.dart';
import 'package:trasit_tracker/services/stations.cta.dart';

class RedLineListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
          child: new FutureBuilder<List<Station>>(
            future: fetchColorStations("red"),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return new ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return new Container(
                        child: RedLineListItem(
                              snapshot.data[index].stationName.toString(),
                              snapshot.data[index].isaccessible,
                              snapshot.data[index].transfers,
                              snapshot.data[index].mapID,
                            ),
                      );
                    }
                  );
              } 
              else if (snapshot.hasError) {
                return new Text("${snapshot.error}");
              }
          // By default, show a loading spinner
          return new Center(
            child: CircularProgressIndicator()
          );
        },
      ),
    );
  }
}

class RedLineListItem extends StatelessWidget{
  final dynamic stationName;
  final dynamic isAccessible;
  final dynamic transferColors;
  final dynamic id;


  RedLineListItem(this.stationName,this.isAccessible,this.transferColors,this.id);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: Icon(Icons.train),
      //trailing: renderAccesable(isAccessible),
      title: new Text(stationName),
      //subtitle: renderTransfers(transferColors)
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