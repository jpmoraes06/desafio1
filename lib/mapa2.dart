import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class mapa2 extends StatefulWidget {
  const mapa2({Key? key}) : super(key: key);

  @override
  _mapa2State createState() => _mapa2State();
}

class _mapa2State extends State<mapa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA 2'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/transport/{z}/{x}/{y}.png?apikey=4aa8204ac81e4209842f54c177b0420f',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(37.7749, -122.4194),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
