import 'dart:io' show Platform;

String getAPIKey(){
  Map<String, String> envVars = Platform.environment;
  print(envVars['PATH']);
  return envVars['CTAKey'].toString();
}