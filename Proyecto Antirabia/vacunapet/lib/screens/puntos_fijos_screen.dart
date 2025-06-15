import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PuntosFijosScreen extends StatefulWidget {
  const PuntosFijosScreen({super.key});

  @override
  _PuntosFijosScreenState createState() => _PuntosFijosScreenState();
}

class _PuntosFijosScreenState extends State<PuntosFijosScreen> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {}; // Para los marcadores

  // Coordenadas del punto fijo en Arequipa (15 de agosto)
  static const LatLng _puntoFijo = LatLng(-16.398, -71.534);

  @override
  void initState() {
    super.initState();
    // Inicializa cualquier cosa que necesites
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId("punto_fijo_1"),
          position: _puntoFijo,
          infoWindow: InfoWindow(title: "Punto Fijo 15 de Agosto"),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Puntos Fijos')),
      body: Column(
        children: [
          // Cuadro con descripción
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Punto Fijo en Arequipa',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'En este punto se realiza la vacunación contra la rabia para mascotas mayores de 4 meses de edad.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          // Mapa con el punto fijo
          Expanded(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: const CameraPosition(
                target: _puntoFijo,
                zoom: 14.0,
              ),
              markers: _markers,
              mapType: MapType.normal,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
            ),
          ),
        ],
      ),
    );
  }
}
