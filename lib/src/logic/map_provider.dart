



import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pizza_planet/model/constants.dart';

class MapLogic extends ChangeNotifier {
  List<Marker> _markers = [];
  List get markers => _markers;
 addMarker(String id, LatLng location, String title, String desc, BitmapDescriptor icon) {
    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
      icon: icon,
      infoWindow: InfoWindow(
        title: title,
        snippet: desc,
      ),
    );
      _markers.add(marker);
notifyListeners();


  }
  Polyline polyline = const Polyline(polylineId: PolylineId('idd'),
    width: 5,

    points: [
      currentLocation,
      home,

    ],
  );

}