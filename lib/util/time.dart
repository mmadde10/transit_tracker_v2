//arrivalTime
//predictedTime
String calculateArrivalTime(data){

  String displayTime = " ";

  DateTime parsedArrivalTime = DateTime.parse(data['arrT'].toString());
  DateTime parsedPredictedTime = DateTime.parse(data['prdt'].toString());

  Duration calculatedArrivalTime = parsedArrivalTime.difference(parsedPredictedTime);
  int appr = int.parse(data['isApp']);
  int isDelayed= int.parse(data['isDly']);

  if(appr == 1 || isDelayed == 1){
    displayTime = "";
  }
  else {
    displayTime = calculatedArrivalTime.inMinutes.toString();
  }
  return displayTime;
}

String displayTimeUnits(data){

  int appr = int.parse(data['isApp']);
  int isDelayed = int.parse(data['isDly']);
  
  String displayTimeUnits = " ";
  if(appr == 1){
    displayTimeUnits = "Due";
  }
  else if(isDelayed == 1){
    displayTimeUnits = "Delayed";
  }
  else{
    displayTimeUnits = "Minutes";
  }

  return displayTimeUnits;

}