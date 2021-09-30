import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_forecast/providers/get_current_location_provider.dart';
import 'package:weather_forecast/screens/weather_screen.dart';

MaterialColor mycolor = MaterialColor(
  0xFF101039,
  <int, Color>{
    50: Color( 0xFF101039),
    100: Color( 0xFF101039),
    200: Color( 0xFF101039),
    300: Color( 0xFF101039),
    400: Color( 0xFF101039),
    500: Color( 0xFF101039),
    600: Color( 0xFF101039),
    700: Color( 0xFF101039),
    800: Color( 0xFF101039),
    900: Color( 0xFF101039),

  },
);
MaterialColor myYellowcolor = MaterialColor(
  0xFFECC238,
  <int, Color>{
    50: Color(0xFFECC238),
    100: Color(0xFFECC238),
    200: Color(0xFFECC238),
    300: Color(0xFFECC238),
    400: Color(0xFFECC238),
    500: Color(0xFFECC238),
    600: Color(0xFFECC238),
    700: Color(0xFFECC238),
    800: Color(0xFFECC238),
    900: Color(0xFFECC238),

  },
);
MaterialColor myaccentcolor = MaterialColor(
  0xFF1A1C49,
  <int, Color>{
    50: Color(  0xFF1A1C49),
    100: Color(  0xFF1A1C49),
    200: Color(  0xFF1A1C49),
    300: Color(  0xFF1A1C49),
    400: Color(  0xFF1A1C49),
    500: Color(  0xFF1A1C49),
    600: Color(  0xFF1A1C49),
    700: Color(  0xFF1A1C49),
    800: Color(  0xFF1A1C49),
    900: Color(  0xFF1A1C49),

  },
);
void main() {

  return runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => GetCurrentLocationProvider(),
        ),

      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: WeatherScreen(),
    );
  }
}


