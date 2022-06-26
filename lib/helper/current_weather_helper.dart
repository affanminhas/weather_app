import 'package:http/http.dart' as http;

class CurrentWeatherHelper {

  getCurrentWeather()async{
    var baseUrl = "http://api.weatherapi.com/v1/";
    var response = http.get(Uri.parse(baseUrl));
  }
}