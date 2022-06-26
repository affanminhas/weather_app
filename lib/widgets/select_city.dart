import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather/screens/city_selection.dart';

import '../models/weather_model.dart';
import 'package:http/http.dart' as http;

class SelectCity extends StatelessWidget {
  List<Current> currentWeather = [];


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async{
        await getCurrentWeather();
        Navigator.of(context).push(MaterialPageRoute(builder: (_)=> CitySelectionScreen()));
      },
      child: Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color(0xff6DC9EF),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Select City", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 17,
                      color: Colors.white
                  ),),
                  Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white,)
                ],
              ),
            ),
          )
      ),
    );
  }
  Future<void> getCurrentWeather()async{
    var url = "http://api.weatherapi.com/v1/current.json?key=431020c1ee8b44f3b8860812222606&q=Karachi&aqi=no";
    var response = await http.get(Uri.parse(url));
    var responseJSON = Current.fromJson(jsonDecode(response.body));
    currentWeather.add(responseJSON);
  }
}
