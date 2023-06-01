import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pizza_planet/model/constants.dart';
import 'package:pizza_planet/src/logic/map_provider.dart';
import 'package:pizza_planet/utils/search_area.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  TextEditingController _searchController = TextEditingController();

  late GoogleMapController _mapController;
  @override
  Widget build(BuildContext context) {
final provider = Provider.of<MapLogic>(context);


    // CameraPosition _cameraPosition = CameraPosition(
    //   zoom: camera_zoom,
    //   tilt: camera_tilt,
    //   bearing: camera_bearing, target: currentLocation,
    // );
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back_ios),
      //     onPressed: ()=> context.canPop(),
      //   ),
      // ),
      body: Stack(

children:[

  Positioned.fill(
  child:   GoogleMap(
    polylines: {
      provider.polyline,
    },
    mapType: MapType.hybrid,
            myLocationButtonEnabled: false,
            myLocationEnabled: true,
            initialCameraPosition: const CameraPosition(target: currentLocation, zoom: 15,

            ),
            onMapCreated: (controller) {
              _mapController = controller;
              provider.addMarker('test', currentLocation, 'inha univ', 'where i study', BitmapDescriptor.defaultMarker);
              provider.addMarker('test2', home, 'home', 'home sweeet home', BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),);
            },
            markers: Set.from(provider.markers),
          ),
),
  searchArea(_searchController, ()async{
    _mapController.animateCamera(CameraUpdate.newCameraPosition(const CameraPosition(target: currentLocation, zoom: 17), ),);
  }),
  Positioned(
    top: 30,
      left: 10,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(30),),
        child: IconButton(
    onPressed: ()=> context.pop(),
    icon:const Icon(Icons.arrow_back_ios),
  ),
      )),
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Position position = await _determinePosition();

          _mapController
              .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 14)));


          provider.markers.clear();

          provider.addMarker('currentLocation', LatLng(position.latitude, position.longitude), 'you are here', 'your current location', BitmapDescriptor.defaultMarker);



        },
        // label: const Text("Current Location"),
       child: const Icon(Icons.location_history),
      ),
    );
  }




}



  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }

// }

