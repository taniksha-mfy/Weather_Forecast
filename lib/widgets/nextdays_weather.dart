import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class NextDaysWeather extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context,index) {
              return Container(
                  width: 120,
                height: 150,
                child: Card(color: myaccentcolor,
                  elevation: 12,
                  shadowColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 40,
                        alignment: Alignment.centerRight,
                        child:  Image.asset("assets/images/storm.png",fit: BoxFit.fitHeight,),
                        //Image.network("http://openweathermap.org/img/wn/11d@2x.png",fit: BoxFit.fitHeight,),
                      ),
                    ),
                    Container(
                      height: 20,
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0,right: 12,top: 2),
                        child: Text("35°C",style: TextStyle(fontSize:15,color: Colors.white,fontWeight: FontWeight.w400),),
                      ),
                    ),
                    Container(
                      height: 20,
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0,right: 12,top: 2),
                        child: Text("Windy",style: TextStyle(fontSize:14,color: Colors.white,fontWeight: FontWeight.w400),),
                      ),
                    ),

                  ],),
                ),
              );
        }),
      ),
    );
  }
  
}