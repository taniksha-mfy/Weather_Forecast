import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_forecast/main.dart';

class TodaysWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                            text: "30",
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
                        child: Image.asset(
                          "assets/images/storm.png",
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
                          "Ahmedabad, Gujarat 382421",
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
