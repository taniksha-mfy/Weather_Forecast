import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather_forecast/providers/get_current_location_provider.dart';

import '../main.dart';

class SearchBar extends StatelessWidget {
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  var txt = TextEditingController();
  FocusNode focusNode = FocusNode();
  String cityName="";


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 8),
      child: TextFormField(
        onSaved: (input) {
          cityName = input!;
          //txt.text=cityName;
        },
        textInputAction: TextInputAction.done,
        focusNode: focusNode,
        //controller: txt,
        style: TextStyle(color: Colors.white, fontSize: 14),
        decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
               // _locationProvider.getCurrentLocation(geolocator);
                FocusScope.of(context).requestFocus(FocusNode());
                 /*var date = DateTime.fromMillisecondsSinceEpoch(1632977725 * 1000);
                 final DateFormat formatter = DateFormat('dd-MM-yyyy');
                final String formatted = formatter.format(date);
                print("date:"+formatted);
                 DateTime now = DateTime.fromMicrosecondsSinceEpoch(1633006683);
                 String formattedDate = DateFormat('hh:mm').format(now);
                 print("time:"+formattedDate.toString());*/

              },
              icon: Icon(
                Icons.search,
                color: myYellowcolor,
                size: 25,
              ),
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.white54),
            hintText:"Enter City to know weather!!",
            fillColor: myaccentcolor),
      ),
    );
  }

}
