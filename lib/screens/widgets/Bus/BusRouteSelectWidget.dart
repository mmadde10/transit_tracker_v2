import 'package:flutter/material.dart';

List<Widget> addRouteTile(snapshot){
  List<Widget>RouteTileList = new List();
  for(var i in snapshot.data.response.keys){
   RouteTileList.add(RouteCard(snapshot.data.response[i]));
  }
  return RouteTileList;
}


class BusRouteWidget extends StatelessWidget{
 final dynamic data;
  BusRouteWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: new AppBar(
        title: new Text("Routes"),
      ),
     body: new Container(
       child: new BusRouteGridView(data),
     )
   );
  }
}

class BusRouteGridView extends StatelessWidget{
  final dynamic data;
  BusRouteGridView(this.data);
    @override
    Widget build(BuildContext context) {
      return GridView.count(
          primary: true,
          padding: const EdgeInsets.all(1.0),
          crossAxisCount: 3,
          childAspectRatio: 0.85,
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 1.0,
          children: addRouteTile(data)
      );
    }
}

class RouteCard extends StatelessWidget {
  final String name;
  final String id;
  RouteCard(this.name,this.id);
   
   @override
   Widget build(BuildContext context){
    return new InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StationSelectWidget(name,id)),
        );
      },
      child: Card(
      color: Colors.blue,
        elevation: 1.5,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
             new Padding(
              padding: new EdgeInsets.fromLTRB(0.0,30.0,0.0,0.0),
                child: new Center(
                  child: new Icon(
                    Icons.train,
                    size:50.0,
                    color: Colors.black
                  )
                )
             ),
             new Padding(
              padding: new EdgeInsets.fromLTRB(00.0,25.0,0.0,8.0),
              child: new Center(
                child: new Text(
                  name,
                  style:TextStyle(
                    fontSize: 20.0,
                      fontFamily: 'Roboto',
                      color: Colors.black
                  ),
                ),
              ),
            ),
          ],
        )
      )
    );
   }
}