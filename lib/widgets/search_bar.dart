import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather_forecast/providers/get_current_location_provider.dart';

import '../main.dart';

class SearchBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    GetCurrentLocationProvider _locationProvider = Provider.of<GetCurrentLocationProvider>(context, listen: false,);
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 8),
      child: TextField(
        style: TextStyle(color: Colors.white, fontSize: 14),
        decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                 var date = DateTime.fromMillisecondsSinceEpoch(1632977725 * 1000);
                 final DateFormat formatter = DateFormat('dd-MM-yyyy');
                final String formatted = formatter.format(date);
                print("date:"+formatted);
                 DateTime now = DateTime.fromMicrosecondsSinceEpoch(1633006683);
                 String formattedDate = DateFormat('hh:mm').format(now);
                 print("time:"+formattedDate.toString());
                 _locationProvider.getCurrentLocation();
                 _locationProvider.getAddressFromLatLng();
                  print(_locationProvider.getAddress);


              },
              icon: Icon(
                Icons.location_on_outlined,
                color: myYellowcolor,
                size: 25,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.white54),
            hintText: "Enter City or tap on location icon!!",
            fillColor: myaccentcolor),
      ),
    );
  }

}
