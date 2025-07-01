# Proyecto VacunaPet - Frontend

Este es el frontend para la aplicación VacunaPet, que es parte de un sistema que tiene como objetivo facilitar el registro, seguimiento y vacunación de perros contra la rabia. Este frontend está desarrollado utilizando Flutter, proporcionando una interfaz móvil para dispositivos Android e iOS.

## 🚀 Tecnologías utilizadas

Flutter: Framework para el desarrollo de aplicaciones móviles nativas para Android e iOS.

GraphQL: Utilizado para la comunicación entre el frontend y el backend, permitiendo consultas flexibles y eficientes.

Firebase: Usado para la autenticación de usuarios y la persistencia de datos en tiempo real.

Google Maps API: Utilizada para mostrar y rastrear los puntos de vacunación en un mapa interactivo.

Prisma: Utilizado en el backend para la gestión de la base de datos PostgreSQL.

##📦 Instalación

Requisitos previos
Asegúrate de tener instalado:

Flutter: Puedes seguir las instrucciones en la documentación oficial de Flutter.

Android Studio o Xcode para la compilación de aplicaciones móviles.

Node.js para la gestión de dependencias de desarrollo.

## Clonar el repositorio
Para clonar el proyecto, abre tu terminal y ejecuta el siguiente comando:

git clone https://github.com/KoldozMMA3/Proyecto_VacunaPet.git
cd Proyecto_VacunaPet/vacunapet


## Instalar dependencias
Para instalar las dependencias necesarias para ejecutar el proyecto, usa el siguiente comando:
flutter pub get

##🎯 Funcionalidades principales
Registro de usuarios: Los usuarios pueden registrarse con su correo electrónico y una contraseña para acceder a la app.

Login: Los usuarios pueden iniciar sesión para acceder a sus datos.

Visualización de puntos de vacunación: La app muestra puntos fijos y móviles de vacunación en un mapa interactivo usando la Google Maps API.

Formulario de denuncias: Los usuarios pueden reportar casos sospechosos de rabia a través de un formulario.

Interacción con el backend: El frontend se comunica con el backend mediante GraphQL, permitiendo obtener y enviar datos en tiempo real.


