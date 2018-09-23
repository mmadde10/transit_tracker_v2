import 'package:flutter/material.dart';
import 'package:trasit_tracker/util/color.dart';

class RedLineListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
     child:ListView(
          children: <Widget>[
              ListTile(
                leading: Icon(Icons.train),
                trailing: Icon(Icons.accessible),
                title: Text("Howard"),
                subtitle: Row(
                  children: <Widget>[
                    new Icon(
                      Icons.train,
                      size: 20.0,
                      color: lineColors["Yellow"],
                    ),
                    new Icon(
                    Icons.train,
                    size: 20.0,
                    color: lineColors["Purple"],
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Jarvis"),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Morse"),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Loyola"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Granville"),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Thorndale"),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Bryn Mawr"),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Argyle"),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Lawrence"),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Wilson"),
                trailing: Icon(Icons.accessible),
                subtitle: Row(
                  children: <Widget>[
                    new Icon(
                    Icons.train,
                    size: 20.0,
                    color: lineColors["Purple"],
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Sheridan"),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Addison"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Belmont"),
                trailing: Icon(Icons.accessible),
                subtitle: Row(
                  children: <Widget>[
                    new Icon(
                      Icons.train,
                      size: 20.0,
                      color: lineColors["Brown"],
                    ),
                    new Icon(
                    Icons.train,
                    size: 20.0,
                    color: lineColors["Purple"],
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Fullerton"),
                trailing: Icon(Icons.accessible),
                subtitle: Row(
                  children: <Widget>[
                    new Icon(
                      Icons.train,
                      size: 20.0,
                      color: lineColors["Brown"],
                    ),
                    new Icon(
                    Icons.train,
                    size: 20.0,
                    color: lineColors["Purple"],
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("North/Clybourn"),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Clark/Division"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Chicago"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Grand"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Lake"),
                trailing: Icon(Icons.accessible),
                subtitle: Row(
                  children: <Widget>[
                    new Icon(
                        Icons.train,
                        size: 20.0,
                        color: lineColors["Brown"],
                      ),
                    new Icon(
                      Icons.train,
                      size: 20.0,
                      color: lineColors["Green"],
                      ),
                    new Icon(
                        Icons.train,
                        size: 20.0,
                        color: lineColors["Orange"],
                      ),
                    new Icon(
                      Icons.train,
                      size: 20.0,
                      color: lineColors["Pink"],
                      ),
                    new Icon(
                        Icons.train,
                        size: 20.0,
                        color: lineColors["Purple"],
                      ),
                    new Icon(
                      Icons.train,
                      size: 20.0,
                      color: lineColors["Blue"],
                      )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Monroe"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Jackson"),
                trailing: Icon(Icons.accessible),
                subtitle: Row(
                  children: <Widget>[
                    new Icon(
                        Icons.train,
                        size: 20.0,
                        color: lineColors["Brown"],
                      ),
                    new Icon(
                        Icons.train,
                        size: 20.0,
                        color: lineColors["Orange"],
                      ),
                    new Icon(
                      Icons.train,
                      size: 20.0,
                      color: lineColors["Pink"],
                      ),
                    new Icon(
                        Icons.train,
                        size: 20.0,
                        color: lineColors["Purple"],
                      ),
                    new Icon(
                      Icons.train,
                      size: 20.0,
                      color: lineColors["Blue"],
                      )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Harrison"),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Harrison"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Roosevelt"),
                trailing: Icon(Icons.accessible),
                subtitle: Row(
                  children: <Widget>[
                    new Icon(
                      Icons.train,
                      size: 20.0,
                      color: lineColors["Orange"],
                    ),
                    new Icon(
                    Icons.train,
                    size: 20.0,
                    color: lineColors["Green"],
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Cermak-Chinatown"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Sox-35th"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("47th"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Garfield"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("63rd"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("69th"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("87th"),
                trailing: Icon(Icons.accessible),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("95th/Dan Ryan"),
                trailing: Icon(Icons.accessible),
              ),
          ],
        ),
    );
  }
}