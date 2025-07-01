Descripción del Proyecto VacunaPet

"Sin Rabia" es una aplicación móvil diseñada para concientizar y facilitar el acceso a la vacunación contra la rabia canina en zonas urbanas. A través de mapas interactivos, notificaciones geolocalizadas y un sistema de autenticación de usuarios, la app busca ayudar a los dueños de mascotas a localizar puntos de vacunación fijos y móviles, y recordarles las fechas de vacunación.

Esta aplicación tiene como objetivo contribuir a la erradicación de la rabia, protegiendo tanto a los animales como a los humanos.

Tecnologías Utilizadas
Flutter: Framework principal para el desarrollo de la aplicación móvil, permitiendo una interfaz nativa para iOS y Android.

Firebase (o Supabase si decides cambiar): Base de datos en tiempo real para almacenar la información de usuarios, puntos de vacunación y notificaciones. Elegimos Firebase por su fácil integración con Flutter y su escalabilidad.

Google Maps API: Utilizada para mostrar los puntos de vacunación en un mapa interactivo, con seguimiento en tiempo real de las personas que se mueven por la zona, no vehículos.

Dart: Lenguaje de programación utilizado para escribir el código de la aplicación.


Funcionalidades Principales
Login de Usuario: Los usuarios pueden acceder a sus cuentas usando un sistema de login con usuario y contraseña. También existe una opción para recuperar la contraseña si la han olvidado.

Registro de Usuario: Nuevos usuarios pueden registrarse llenando un formulario con sus datos personales (nombre, edad, DNI, etc.) y se guarda la información en la base de datos para futuras sesiones.

Visualización de Puntos de Vacunación:

Puntos Fijos: Muestra una lista o mapa con los puntos de vacunación fijos disponibles.

Puntos Móviles: Muestra el recorrido en tiempo real de personas que se mueven por la zona para realizar las vacunaciones y notificaciones automáticas cuando estén cerca del usuario.


Capturas de Pantalla

Pantalla de puntos fijos

![image](https://github.com/user-attachments/assets/aee23139-0e03-4a75-bf12-6c3f23d862ff)


Mapa interactivo mostrando puntos de vacunación personas móviles.

![image](https://github.com/user-attachments/assets/f9e43800-27d7-41c6-a024-65d4980280b3)

## Probar la aplicacion

1:ingresas a la ruta donde se encuentra la carpeta 
C:..\backend\b_vaccinepet
2:abres un terminal desde la ruta de la carpeta de b_vaccinepet y ejecutas estos comandos:
npm install -D typescript ts-node     (Instalador de note)
npx prisma db push                    (Reconoce valores de Prisma)
npm run start:dev                     (enciendes el servidor local)

3: ingresas a la carpeta de vacunapet \Proyecto Antirabia\vacunapet
abres un emulador luego colocas este comando en la terminal de la carpeta que ingresamos  flutter run este ejecutara el programa si no respetas el orden no podras abrir la aplicacion porque el servidor estara apagado

4: En tu navegador ingresa estar ruta: http://localhost:3000/graphql

5: valores para realizar pruebas
# Para probar si funcion la tabla USER

// crear uno por uno cada usuario
mutation {
  register(input: {
    nombre: "Juan Pérez",
    usuario: "juan123",
    contrasena: "secreta"
  }) {
    id
    nombre
    usuario
  }
}

mutation {
  register(input: {
    nombre: "eduardo",
    usuario: "edu123",
    contrasena: "1234"
  }) {
    id
    nombre
    usuario
  }
}

mutation {
  register(input: {
    nombre: "cristian",
    usuario: "cris123",
    contrasena: "secret1"
  }) {
    id
    nombre
    usuario
  }
}

mutation {
  register(input: {
    nombre: "fernando",
    usuario: "fernando123",
    contrasena: "clave123"
  }) {
    id
    nombre
    usuario
  }
}



// crear uno por uno cada usuario
mutation {
  createLocation(input: {userId: "cris", latitude: -16.413969, longitude: -71.507865}) {
    id
    timestamp
  }
}


mutation {
  createLocation(input: {userId: "ana", latitude: 
-16.409688, longitude: -71.517521}) {
    id
    timestamp
  }
}



mutation {
  createLocation(input: {userId: "juan", latitude: -16.414669, longitude: -71.498166}) {
    id
    timestamp
  }
}


