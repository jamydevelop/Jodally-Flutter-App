import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePassengerPage extends StatefulWidget {
  const HomePassengerPage({super.key});

  @override
  State<HomePassengerPage> createState() => _HomePassengerPageState();
}

class _HomePassengerPageState extends State<HomePassengerPage> {
  LatLng? _currentPosition;

  late GoogleMapController _mapController;

  @override
  void initState() {
    _determinePosition();
    super.initState();
  }

  void _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );

    Position position = await Geolocator.getCurrentPosition(
      locationSettings: locationSettings,
    );

    final latlng = LatLng(position.latitude, position.longitude);
    // Trigger to rebuild the UI
    setState(() {
      _currentPosition = latlng;
    });

    if (_currentPosition != null) {
      _mapController.animateCamera(CameraUpdate.newLatLng(_currentPosition!));
    }
  }

  void _onMapController(GoogleMapController controller) {
    _mapController = controller;

    //move map camera to current location
    if (_currentPosition != null) {
      _mapController.animateCamera(CameraUpdate.newLatLng(_currentPosition!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GoogleMap(
        onMapCreated: _onMapController,
        initialCameraPosition: CameraPosition(
          target:
              _currentPosition ??
              LatLng(37.43296265331129, -122.08832357078792),
          //tilt: 59.440717697143555,
          zoom: 19.151926040649414,
        ),
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }
}
