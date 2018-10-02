import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trasit_tracker/assets/config.dart';

String buildURL(mapLocation){
  String mapID = '&mapid=' + mapLocation.toString();
  String max = '&max=10';
  String baseURL = 'http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx';
  String key = '?key=' + ctaKey;
  String outputType = '&outputType=JSON';
  String url = baseURL + key + mapID + max + outputType;

  return url;
}

Future<Arrival> fetchArrival(stationID) async {
  String url = buildURL(stationID); //hard coded for now
  final response = await http.get(url);
  final responseJson = json.decode(response.body);
  return new Arrival.fromJson(responseJson);
}

class Arrival {
  dynamic response;
  Arrival({this.response});

  factory Arrival.fromJson(Map<String, dynamic> json) {
    Map<int, dynamic> responseMap = json['ctatt']['eta'].asMap();
    return new Arrival(
     response: responseMap
    );
  }
}