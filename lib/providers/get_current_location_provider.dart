import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class GetCurrentLocationProvider extends ChangeNotifier{
  Position currentPosition=Position();
  String currentAddress="";
  // GetCurrentLocationProvider({required this.currentPosition,required this.currentAddress});


  getCurrentLocation(Geolocator geolocator) {
    try{
      geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best).then((Position position) {
        currentPosition = position;
        notifyListeners();
        getAddressFromLatLng(geolocator);
      });
    }
  catch(e){
    print(e);
  }

   // notifyListeners();
  }

  getAddressFromLatLng(Geolocator geolocator) async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates
        (currentPosition.latitude, currentPosition.longitude);
      Placemark place = p[0];
      currentAddress = "${place.locality}, ${place.postalCode}, ${place.country}";
     // print(currentAddress);
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }



  Position get  getPosition=>currentPosition;
  String get  getAddress=> currentAddress;

}