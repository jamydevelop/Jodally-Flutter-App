import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';

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
    super.initState();
    _determinePosition();
  }

  void _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    final locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );

    Position position = await Geolocator.getCurrentPosition(
      locationSettings: locationSettings,
    );

    final latLng = LatLng(position.latitude, position.longitude);

    setState(() {
      _currentPosition = latLng;
    });

    if (_mapController != null) {
      _mapController.animateCamera(CameraUpdate.newLatLng(_currentPosition!));
    }
  }

  void _onMapController(GoogleMapController controller) {
    _mapController = controller;

    if (_currentPosition != null) {
      _mapController.animateCamera(CameraUpdate.newLatLng(_currentPosition!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Google Map
          GoogleMap(
            onMapCreated: _onMapController,
            initialCameraPosition: CameraPosition(
              target:
                  _currentPosition ??
                  const LatLng(37.43296265331129, -122.08832357078792),
              zoom: 10.151926040649414,
            ),
            myLocationEnabled: true,
            // myLocationButtonEnabled: true,
          ),

          // Top buttons
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40, // adjust width
                  height: 40, // adjust height
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero, // removes default padding
                    iconSize: 20, // you can also try adjusting this
                    icon: Image.asset(
                      Assets.up_arrows_icon,
                      scale: 4, // increase scale to make image smaller
                      color: greenPrimary,
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (_currentPosition != null) {
                        _mapController.animateCamera(
                          CameraUpdate.newCameraPosition(
                            CameraPosition(
                              target: _currentPosition!,
                              zoom: 17.0, // You can change this value as needed
                            ),
                          ),
                        );
                      }
                    },

                    padding: EdgeInsets.zero,
                    iconSize: 20,
                    icon: Image.asset(
                      Assets.gpsIcon,
                      scale: 4,
                      color: greenPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
