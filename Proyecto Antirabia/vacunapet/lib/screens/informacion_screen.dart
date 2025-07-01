import 'package:flutter/material.dart';

class InformacionScreen extends StatelessWidget {
  final String section;

  const InformacionScreen({super.key, required this.section}); // Recibimos la sección

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información sobre la Rabia Canina'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Mostrar contenido dependiendo de la sección seleccionada
              if (section == 'vacunacion') ...[
                const Text(
                  '¿Cómo saber si tu perro puede vacunarse?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Los perros pueden vacunarse contra la rabia a partir de los 3 meses de edad. Es importante que tu perro reciba las dosis necesarias según el calendario de vacunación.\n\n'
                      'Es recomendable mantener una pauta de vacunación regular, especialmente en áreas donde los casos de rabia sean frecuentes. La vacuna es segura y efectiva en perros sanos.',
                  style: TextStyle(fontSize: 16),
                ),
              ] else if (section == 'sintomas') ...[
                const Text(
                  '¿Cómo saber si tu perro tiene síntomas de rabia?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Los síntomas de rabia en perros pueden variar dependiendo de la etapa de la enfermedad. Algunos de los síntomas incluyen:\n\n'
                      '- Cambios en el comportamiento\n'
                      '- Comportamiento agresivo o muy dócil\n'
                      '- Dificultad para tragar\n'
                      '- Parálisis o debilidad muscular\n'
                      '- Salivación excesiva (baba)\n'
                      '- Hiperactividad y luego letargo\n'
                      '- Comportamiento errático (como no reconocer a su dueño)\n\n'
                      'Si observas cualquiera de estos síntomas, es crucial que contactes a un veterinario inmediatamente.',
                  style: TextStyle(fontSize: 16),
                ),
              ] else if (section == 'prevencion') ...[
                const Text(
                  '¿Cómo prevenir la rabia en tu perro?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'La prevención de la rabia incluye varias acciones clave para mantener a tu perro a salvo:\n\n'
                      '- Mantén al perro vacunado de acuerdo con el calendario de vacunación.\n'
                      '- Evita el contacto con animales salvajes o desconocidos, ya que son los principales transmisores de la rabia.\n'
                      '- No dejes que tu perro pasee sin correa en áreas desconocidas o en contacto con otros animales.\n'
                      '- Llama a un veterinario ante cualquier duda o si tu perro ha tenido contacto con un animal sospechoso.\n'
                      '- Mantén a tu perro saludable con visitas periódicas al veterinario y una buena higiene.\n',
                  style: TextStyle(fontSize: 16),
                ),
              ] else if (section == 'mordido') ...[
                const Text(
                  '¿Qué hacer si tu perro es mordido por un animal sospechoso?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Si tu perro es mordido por un animal que sospechas que podría tener rabia, sigue estos pasos:\n\n'
                      '1. Lleva a tu perro inmediatamente al veterinario. La atención temprana es crucial.\n'
                      '2. Si es posible, identifica al animal que mordió a tu perro y notifícalo a las autoridades locales.\n'
                      '3. Si tu perro no tiene un historial de vacunación, es posible que se le administre la vacuna contra la rabia como medida preventiva.\n'
                      '4. Mantén la calma y sigue las instrucciones del veterinario para asegurar la salud de tu mascota.',
                  style: TextStyle(fontSize: 16),
                ),
              ] else if (section == 'contacto') ...[
                const Text(
                  '¿Cómo contactarte con nosotros?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Si necesitas más información o asistencia, puedes contactar con nosotros a través de:\n\n'
                      'Teléfono: 956 222 110\n'
                      'Correo: ccarrizalesl@ulasalle.edu.pe\n'
                      'Dirección: Hospital Veterinario "Salud Animal", Calle 123, Distrito paucarpata\n\n'
                      'Visítanos en nuestro hospital o agenda una consulta para más detalles sobre la prevención de la rabia.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
