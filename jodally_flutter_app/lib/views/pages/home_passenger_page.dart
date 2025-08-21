import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jodally_flutter_app/core/components/home_passenger_book_details_dialog.dart';
import 'package:jodally_flutter_app/core/components/map_type_dialog.dart';
import 'package:jodally_flutter_app/core/resources/assets.dart';
import 'package:jodally_flutter_app/core/resources/colors.dart';

class HomePassengerPage extends StatefulWidget {
  const HomePassengerPage({super.key});

  @override
  State<HomePassengerPage> createState() => _HomePassengerPageState();
}

class _HomePassengerPageState extends State<HomePassengerPage> {
  LatLng? _currentPosition;
  MapType _currentMapType = MapType.normal;
  late GoogleMapController _mapController;

  bool _showDialog = false; // <-- Track dialog visibility

  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

  void _determinePosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return;

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return;
    }
    if (permission == LocationPermission.deniedForever) return;

    Position position = await Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
      ),
    );

    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude);
    });

    _mapController.animateCamera(CameraUpdate.newLatLng(_currentPosition!));
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
            mapType: _currentMapType,
            onMapCreated: _onMapController,
            initialCameraPosition: CameraPosition(
              target:
                  _currentPosition ??
                  const LatLng(37.43296265331129, -122.08832357078792),
              zoom: 10.151926040649414,
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
          ),

          // Top Buttons
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildIconButton(Assets.up_arrows_icon, () {
                  showGeneralDialog(
                    context: context,
                    barrierDismissible: true,
                    barrierLabel: 'MapTypeDialog',
                    barrierColor: Colors.transparent,
                    transitionDuration: const Duration(milliseconds: 200),
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                        child: Center(
                          child: MapTypeDialog(
                            selectedMapType: _currentMapType,
                            onMapTypeSelected: (selectedType) {
                              setState(() {
                                _currentMapType = selectedType;
                              });
                            },
                          ),
                        ),
                      );
                    },
                  );
                }),
                _buildIconButton(Assets.gpsIcon, () {
                  if (_currentPosition != null) {
                    _mapController.animateCamera(
                      CameraUpdate.newCameraPosition(
                        CameraPosition(target: _currentPosition!, zoom: 17.0),
                      ),
                    );
                  }
                }),
              ],
            ),
          ),

          // Dialog with blur behind (but NOT bottom nav)
          if (_showDialog) ...[
            // Blur only behind dialog content
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(color: Colors.black.withOpacity(0.05)),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              right: 20,
              child: Material(
                color: Colors.transparent,
                child: HomePassengerBookDetailsDialog(
                  onClose: () {
                    setState(() {
                      _showDialog = false;
                    });
                  },
                ),
              ),
            ),
          ],
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showDialog = true;
          });
        },
        child: Icon(Icons.directions_car),
      ),
    );
  }

  Widget _buildIconButton(String asset, VoidCallback onPressed) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(asset, scale: 4, color: greenPrimary),
        padding: EdgeInsets.zero,
        iconSize: 20,
      ),
    );
  }
}
