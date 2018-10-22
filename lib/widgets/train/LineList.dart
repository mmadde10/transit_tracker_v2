import 'package:flutter/material.dart';
import 'package:trasit_tracker/util/color.dart';
import 'package:trasit_tracker/services/stations.cta.dart';
import 'package:trasit_tracker/screens/widgets/train/StationWidget.dart';

class LineListView extends StatelessWidget{
  final String color;
  LineListView(this.color);

  @override
  Widget build(BuildContext context) {
    return new Container(
          child: new FutureBuilder<List<Station>>(
            future: fetchColorStations(color),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return new ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return new Container(
                        child: LineListItem(
                              snapshot.data[index].stationName.toString(),
                              snapshot.data[index].isaccessible,
                              snapshot.data[index].transfers,
                              snapshot.data[index].mapID,
                              color
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

class LineListItem extends StatelessWidget{
  final dynamic stationName;
  final dynamic isAccessible;
  final dynamic transferColors;
  final dynamic id;
  final dynamic trainColor;


  LineListItem(this.stationName,this.isAccessible,this.transferColors,this.id,this.trainColor);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: Icon(Icons.train),
      trailing: renderAccesable(isAccessible),
      title: new Text(stationName),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StationWidget(stationName, id, trainColor)),
        );
      },
      //subtitle: renderTransfers(transferColors, trainColor)
    );
  }
  renderAccesable(isAccessible){
    if(isAccessible){
      return Icon(Icons.accessible);
    }
  }
  Widget renderTransfers(transferColors, trainColor){
     List<Widget> list = new List<Widget>();
     for (var key in transferColors.keys){
       if(transferColors[key] == true){
            list.add(
              new Icon(
                Icons.train,
                size: 20.0,
                color: trainColors[key]
            )
          );
       }
     }
    return new Row(children: list);
  }
}