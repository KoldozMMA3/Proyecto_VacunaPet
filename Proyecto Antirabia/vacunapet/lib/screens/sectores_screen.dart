import 'package:flutter/material.dart';
import 'puntos_fijos_screen.dart';
import 'puntos_moviles_screen.dart';
import 'informacion_screen.dart'; // Asegúrate de importar la nueva pantalla

class SectoresScreen extends StatelessWidget {
  const SectoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sectores de Vacunación'),
      ),
      // Agregamos el menú de hamburguesa (Drawer)
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menú de Opciones',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            // Opciones informativas
            ListTile(
              title: const Text('¿Cómo saber si tu perro puede vacunarse?'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InformacionScreen(section: 'vacunacion'), // Pasamos la sección 'vacunacion'
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('¿Cómo saber si tu perro tiene síntomas de rabia?'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InformacionScreen(section: 'sintomas'), // Pasamos la sección 'sintomas'
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('¿Cómo prevenir la rabia en tu perro?'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InformacionScreen(section: 'prevencion'), // Pasamos la sección 'prevencion'
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('¿Qué hacer si tu perro es mordido?'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InformacionScreen(section: 'mordido'), // Pasamos la sección 'mordido'
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('¿Cómo contactarte con nosotros?'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InformacionScreen(section: 'contacto'), // Pasamos la sección 'contacto'
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sectores de Vacunación',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PuntosFijosScreen(),
                  ),
                );
              },
              child: const Text('Puntos Fijos'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PuntosMovilesScreen(),
                  ),
                );
              },
              child: const Text('Puntos Móviles'),
            ),
          ],
        ),
      ),
    );
  }
}
