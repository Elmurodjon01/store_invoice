import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pizza_planet/model/constants.dart';
import 'package:pizza_planet/src/logic/map_provider.dart';
import 'package:pizza_planet/utils/search_area.dart';
import 'package:provider/provider.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
final provider = Provider.of<MapLogic>(context);

    late GoogleMapController _mapController;
    CameraPosition _cameraPosition = CameraPosition(
      zoom: camera_zoom,
      tilt: camera_tilt,
      bearing: camera_bearing, target: currentLocation,
    );
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(

children:[

  Positioned.fill(
  child:   GoogleMap(
    polylines: {
      provider.polyline,
    },
    mapType: MapType.hybrid,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            initialCameraPosition: _cameraPosition,
            onMapCreated: (controller) {
              _mapController = controller;
              provider.addMarker('test', currentLocation, 'inha univ', 'where i study', BitmapDescriptor.defaultMarker);
              provider.addMarker('test2', home, 'home', 'home sweeet home', BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),);
            },
            markers: Set.from(provider.markers),
          ),
),
  searchArea(_searchController),
      ],
      ),
    );
  }
}
