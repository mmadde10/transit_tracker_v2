import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trasit_tracker/assets/config.dart';

Future<Arrival> fetchArrival(stationID) async {
  String url = 'http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx?key=$ctaKey&mapid=$stationID&max=10&outputType=JSON';
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