import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePassengerPage extends StatefulWidget {
  const HomePassengerPage({super.key});

  @override
  State<HomePassengerPage> createState() => _HomePassengerPageState();
}

class _HomePassengerPageState extends State<HomePassengerPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(37.43296265331129, -122.08832357078792),
          //tilt: 59.440717697143555,
          zoom: 19.151926040649414,
        ),
      ),
    );
  }
}
