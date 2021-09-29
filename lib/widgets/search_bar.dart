import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class SearchBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:
      const EdgeInsets.only(left: 12.0, right: 12, bottom: 8),
      child: TextField(
        style: TextStyle(color: Colors.white, fontSize: 14),
        decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.location_on_outlined,
              color: Colors.yellow.shade600,
              size: 25,
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