import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/Geolocation/get_location.dart';
import 'package:weather/widgets/select_city.dart';
import 'package:weather/widgets/select_current_location.dart';

class LandingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, left: 20),
            child: Text("Hello,", style: TextStyle(
              fontSize: 50,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600
            ),),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("let's set you,", style: TextStyle(
                fontSize: 50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              color: Color(0xffBFBFBF)
              )
            ),),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("weather..", style: TextStyle(
                fontSize: 50,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: Color(0xff6DC9EF)
            )
            ),),
          const Image(
            image: AssetImage(
              "images/landing_line.png"
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 100, left: 20, right: 20),
            child: CurrentLocationField(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10 ,left: 20, right: 20),
            child: SelectCity()
          )
        ],
      ),
    );
  }

}
