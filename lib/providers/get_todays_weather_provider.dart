import 'package:flutter/cupertino.dart';
import 'package:weather_forecast/api_service/apiservice.dart';
import 'package:weather_forecast/models/todays_weather_response.dart';

class GetTodaysWeatherProvider extends ChangeNotifier {
  ApiService apiService = ApiService();
  TodaysWeatherResponse weatherResponse = TodaysWeatherResponse();
  bool loading = false;

  getPostData(city) async {
    loading = true;
    weatherResponse = await apiService.getTodaysWeather(city);
    loading = false;
    notifyListeners();
  }
}
