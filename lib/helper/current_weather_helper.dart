import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/weather_model.dart';

class CurrentWeatherHelper {

  getCurrentWeather()async{
    var url = "http://api.weatherapi.com/v1/forecast.json?key=431020c1ee8b44f3b8860812222606&q=London&days=1&aqi=no&alerts=no";
    var response = await http.get(Uri.parse(url));
    var responseJSON = Current.fromJson(jsonDecode(response.body));
    print(responseJSON);
  }
}