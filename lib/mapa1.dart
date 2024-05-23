import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class mapa1 extends StatefulWidget {
  const mapa1({Key? key}) : super(key: key);

  @override
  _mapa1State createState() => _mapa1State();
}

class _mapa1State extends State<mapa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA 1'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/landscape/{z}/{x}/{y}.png?apikey=4aa8204ac81e4209842f54c177b0420f',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(37.7749, -122.4194),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.amber),
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
