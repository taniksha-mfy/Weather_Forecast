import 'dart:convert';

import 'package:weather_forecast/models/todays_weather_response.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<TodaysWeatherResponse> getTodaysWeather(city) async {
    final todayresponse = await http.get(Uri.parse("http://api.openweathermap.org/data/2.5/weather?q=$city,gujarat&APPID=2c55834098329c8ce1ac9562e7ba95ff&units=metric"));
    if (todayresponse.statusCode == 200 || todayresponse.statusCode == 400) {
      return TodaysWeatherResponse.fromJson(json.decode(todayresponse.body));
    } else {
      try{
        return TodaysWeatherResponse.fromJson(json.decode(todayresponse.body));
      } catch(e){
        print(e.toString());
      }
      throw Exception("Failed to load Data");
    }
  }
}