import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather/screens/home_screen.dart';

import '../../models/weather_model.dart';
import 'package:http/http.dart' as http;

class CitySuggestionField extends StatefulWidget {
  String cityName;
  String city;

  CitySuggestionField({required this.cityName, required this.city});

  @override
  State<CitySuggestionField> createState() => _CitySuggestionFieldState();
}

class _CitySuggestionFieldState extends State<CitySuggestionField> {
  Current? currentWeather;
  Location? location;
  WeatherModel? weatherModelClass;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async{
        await getCurrentWeather();
        Navigator.of(context).push(MaterialPageRoute(builder: (_)=> HomeScreen(weatherModel: weatherModelClass,cityNameWithCountry: widget.cityName,)));
      },
      child: Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color(0xffE0E0E0),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(widget.cityName, style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 17,
                      color: Colors.black
                  ),),
                ],
              ),
            ),
          )
      ),
    );
  }

  Future<void> getCurrentWeather()async{
    var url = "http://api.weatherapi.com/v1/current.json?key=431020c1ee8b44f3b8860812222606&q=${widget.city}&aqi=no";
    var response = await http.get(Uri.parse(url));
    var responseJSON = WeatherModel.fromJson(jsonDecode(response.body));
    setState(() {
      weatherModelClass = responseJSON;
    });
  }
}
