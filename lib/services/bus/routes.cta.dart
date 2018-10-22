import "package:http/http.dart" as http;
import "dart:async";
import "dart:convert";
import 'package:trasit_tracker/assets/config.dart';

Future <List<Route>> fetchRoutes() async{
  var url = 'http://www.ctabustracker.com/bustime/api/v2/getroutes?format=json&key=$busTrackerKey';
  final response = await http.get(url);
  List responseJson = json.decode(response.body.toString());
  List<Route> routeList = createRouteList(responseJson);
  return routeList;
}

class Route {
  Route({this.routeName,this.routeNumber});
  var routeNumber;
  var routeName;
}

List<Route> createRouteList(List data){
   List<Route> list = new List();
  for (int i = 0; i < data.length; i++) {
    print(data[i]);
   // String title = data[i]["station_name"];
   // String id = data[i]["map_id"];
  }
}