import "package:http/http.dart" as http;
import "dart:async";
import "dart:convert";
import 'package:trasit_tracker/assets/config.dart';

class Station {

  var stationName;
  var mapID;
  Map transfers;
  bool isaccessible;

  Station({this.stationName,this.mapID,this.transfers,this.isaccessible});
}

Future <List<Station>> fetchColorStations(color) async {
  var url = "https://data.cityofchicago.org/resource/8mj8-j3c4.json?" + "\u0024\u0024app_token" + "="+ city_of_chicago_key + "&" + color +"=true";
  final response = await http.get(url);
  print(url);
  List responseJson = json.decode(response.body.toString());
  List<Station> stationList = createStationList(responseJson);
  return stationList;
}

List<Station> createStationList(List data){

  List<Station> list = new List();
  for (int i = 1; i < data.length-1; i=i+2) {
   var transfers = Map();
    String title = data[i]["station_name"];
    String id = data[i]["map_id"];
    bool ada = data[i]["ada"];
    transfers["blue"] = data[i]["blue"];
    transfers["brown"] = data[i]["brn"];
    transfers["green"] = data[i]["g"];
    transfers["purple"] = data[i]["p"];
    transfers["purpleExpress"] = data[i]["pexp"];
    transfers["red"] = data[i]["red"];
    transfers["orange"] = data[i]["o"];
    print(title);
    Station station = new Station(stationName: title, mapID: id, isaccessible: ada, transfers: transfers);
    list.add(station);
  }
  return list;
}