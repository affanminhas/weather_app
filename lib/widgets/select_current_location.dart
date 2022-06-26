import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/screens/home_screen.dart';
import 'package:weather/Geolocation/current_location.dart';

class CurrentLocationField extends StatelessWidget {
  const CurrentLocationField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        gettingLocation();
        Navigator.of(context).push(MaterialPageRoute(builder: (_)=> HomeScreen()));
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Select Current Location", style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 17,
                  color: Colors.black
                ),),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        )
      ),
    );
  }

  void gettingLocation() async{
    var check = await _getGeoLocationPosition();
    print(check);
  }

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {

        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }
}