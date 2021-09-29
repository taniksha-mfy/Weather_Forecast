import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_forecast/main.dart';
import 'package:weather_forecast/widgets/nextdays_weather.dart';
import 'package:weather_forecast/widgets/search_bar.dart';
import 'package:weather_forecast/widgets/todays_weather.dart';

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.10,
                      alignment: Alignment.center,
                      child: Text(
                        "Weather Forecast",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )),
                ),
                SearchBar(),
                TodaysWeather(),
                NextDaysWeather(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
