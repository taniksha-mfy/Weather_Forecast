import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_forecast/main.dart';

class Styles{
  static ThemeData themeData(bool isDarkTheme, BuildContext context){
    return ThemeData(
      primarySwatch: mycolor,
      primaryColor: mycolor,
      backgroundColor: isDarkTheme ? Colors.black : Color(0xffF1F5FB),
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
    );

  }
}