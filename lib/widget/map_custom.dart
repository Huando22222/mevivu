import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapCustom extends StatefulWidget {
  const MapCustom({super.key});

  @override
  State<MapCustom> createState() => _MapCustomState();
}

class _MapCustomState extends State<MapCustom> {
  static const LatLng _position =
      LatLng(10.785332281757217, 106.68376457639786);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: FlutterMap(
        options: MapOptions(
          initialCenter: _position,
          initialZoom: 17,
        ),
        children: [
          TileLayer(
            urlTemplate:
                'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(markers: [
            Marker(
              point: _position,
              child: Icon(
                Icons.location_on_outlined,
                color: Colors.red,
                size: 50,
              ),
            )
          ])
        ],
      ),
    );
  }
}
