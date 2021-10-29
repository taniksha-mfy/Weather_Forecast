import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:weather_forecast/main.dart';
import 'package:weather_forecast/providers/get_current_location_provider.dart';
import 'package:weather_forecast/providers/get_todays_weather_provider.dart';

class TodaysWeather extends StatelessWidget {
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  String currentLocation="Fetching location...";
  String temp="";
  String icon="";
  @override
  Widget build(BuildContext context) {
    GetCurrentLocationProvider _locationProvider = Provider.of<GetCurrentLocationProvider>(context, listen: true,);
    GetTodaysWeatherProvider todaysWeatherProvider=Provider.of<GetTodaysWeatherProvider>(context,listen: true);
    todaysWeatherProvider.getPostData("gandhinagar");
    if(temp==null || temp==""){
      temp="0";
    }else{
      temp= todaysWeatherProvider.weatherResponse.main!.temp.toString();
      temp=temp.substring(0,2);

    }
    if(icon==null ||icon==""){
      icon="http://openweathermap.org/img/w/10d.png";
    }else{
      var ic=todaysWeatherProvider.weatherResponse.weather![0].icon;
      icon= "http://openweathermap.org/img/wn/$ic@4x.png";
      print(ic);
    }

    _locationProvider.getCurrentLocation(geolocator);
    currentLocation=_locationProvider.getAddress;
    if(currentLocation==""||currentLocation==null){
      currentLocation="Fetching location...!!";
    }

    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.40,
        child: Card(
          color: myaccentcolor,
          elevation: 12,
          shadowColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.10,
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Today",
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.10,
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Wed,29 Sept",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.10,
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            text: temp,
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(text: "°C",style: TextStyle(fontSize:50,color: myYellowcolor,fontWeight: FontWeight.w400))
                            ]
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        child: Image.network(
                         icon,
                          fit: BoxFit.fitHeight,
                        ),
                        //Image.network("http://openweathermap.org/img/wn/11d@2x.png",fit: BoxFit.fitHeight,),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 30,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.location_on_outlined,
                        color: myYellowcolor,
                      ),
                      //Image.network("http://openweathermap.org/img/wn/11d@2x.png",fit: BoxFit.fitHeight,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.10,
                        alignment: Alignment.center,
                        child: Text(
                          currentLocation,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
