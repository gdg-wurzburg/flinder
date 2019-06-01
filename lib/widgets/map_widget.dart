
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget{

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  var currentPosition = LatLng(49.0,13.0);

  Completer<GoogleMapController> _controller = Completer();

  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    var map = GoogleMap(
      mapType: MapType.normal,
      myLocationEnabled: false,
      myLocationButtonEnabled: false,
      scrollGesturesEnabled: false,
      zoomGesturesEnabled: false,
      tiltGesturesEnabled: false,
      initialCameraPosition: CameraPosition(
        target: currentPosition,
        zoom: 15,
      ),
      onMapCreated: (GoogleMapController controller) {
        mapController = controller;
        _controller.complete(controller);
        mapController
            .animateCamera(CameraUpdate.newLatLng(currentPosition));
      },
      onCameraMove: (position) {
        currentPosition = position.target;
      },
      onCameraIdle: () {},
      markers: Set()..add(Marker(markerId: MarkerId("current"),position: currentPosition)),
    );
    return SizedBox(height: 400.0, width: double.infinity,child: map);
  }
}