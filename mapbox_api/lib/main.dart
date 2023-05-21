import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterMap(
      options: MapOptions(
        center: latLng.LatLng(51.5, -0.09),
        zoom: 13.0,
      ),
      nonRotatedChildren: [
        AttributionWidget.defaultWidget(
          source: '© Mapbox © OpenStreetMap',
          onSourceTapped: () async {
            // Requires 'url_launcher'
            if (!await launchUrl(Uri.parse(
                "https://api.mapbox.com/styles/v1/mohitraj27/clfy5zk5r000d01nrghlzirs9/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibW9oaXRyYWoyNyIsImEiOiJjbGZ5NXRlYmgwMW12M2dtdHQzMDRuY3VuIn0.zXujKHwRR4cuKqQJ-oZqyA"))) {
              if (kDebugMode) print('Could not launch URL');
            }
          },
        )
      ],
      children: [
        TileLayer(
          urlTemplate:
              "https://api.mapbox.com/styles/v1/mohitraj27/clfy5zk5r000d01nrghlzirs9/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiaGFqb21hcHMiLCJhIjoiY2xmeG1kNzdrMHNmOTNpczZleG5pZHp2YSJ9.ir7Gt0XfBIqI4TQ5F0joqg",
          additionalOptions: {
            "access_token":
                "<pk.eyJ1IjoiaGFqb21hcHMiLCJhIjoiY2xmeG1kNzdrMHNmOTNpczZleG5pZHp2YSJ9.ir7Gt0XfBIqI4TQ5F0joqg>",
            "id": 'mapbox.satellite'
          },
          userAgentPackageName: 'com.example.app',
        ),
      ],
    ));
  }

  launchUrl(Uri parse) {}
}
//my own access token
//pk.eyJ1IjoibW9oaXRyYWoyNyIsImEiOiJjbGZ5NXRlYmgwMW12M2dtdHQzMDRuY3VuIn0.zXujKHwRR4cuKqQJ-oZqyA