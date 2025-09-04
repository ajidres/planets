# Planets - Aplicación Flutter
![alt text](https://img.shields.io/badge/Flutter-3.13.9-blue?style=flat-square&logo=flutter)

![alt text](https://img.shields.io/badge/Dart-3.1.5-blue?style=flat-square&logo=dart)

Una aplicación móvil desarrollada en Flutter que muestra información detallada sobre los planetas del sistema solar, con una interfaz de usuario moderna y atractiva.

# 🏗️ Arquitectura
La aplicación sigue una arquitectura limpia y escalable basada en los siguientes principios:

Patrones de Diseño Implementados
Riverpod: Para la gestión del estado de la aplicación

Repository Pattern: Para abstraer el origen de los datos

Flujo de Datos
UI → Solicita datos al Provider

Provider → Ejecuta UseCase

UseCase → Llama al Repository

Repository → Obtiene datos del DataSource

DataSource → Devuelve datos (local/remoto)

El flujo se invierte para entregar los datos a la UI

# 🚀 Cómo Ejecutar el Proyecto
## Prerrequisitos
Flutter SDK (versión 3.13.9 o superior)

Dart (versión 3.1.5 o superior)

Un editor de código (VS Code recomendado con extensión Flutter)

Dispositivo físico o emulador (Android/iOS)

##Pasos de Instalación
Clonar el repositorio

bash
git clone https://github.com/ajidres/planets.git
cd planets
Obtener las dependencias

bash
flutter pub get
Ejecutar la aplicación

# Para ejecutar en modo desarrollo
flutter run

# Para ejecutar en un dispositivo específico
flutter run -d <device_id>

# Para construir la aplicación (Android)
flutter build apk

# Para construir la aplicación (iOS)
flutter build ios


# Configuraciones Adicionales
Para iOS:
bash
cd ios
pod install

Para Android:
Asegúrate de tener el SDK de Android configurado correctamente
Aceptar las licencias de Android: flutter doctor --android-licenses

# 📱 Características de la Aplicación
✅ Listado de planetas del sistema solar

✅ Detalles completos de cada planeta

✅ Interfaz de usuario moderna y responsive

✅ Animaciones fluidas

✅ Gestión de estado con BLoC

✅ Datos locales (posiblemente con mock data o API)


# 📄 Licencia
Este proyecto está bajo la Licencia MIT. Ver el archivo LICENSE para más detalles.

# 📧 Contacto
Si tienes preguntas sobre este proyecto, puedes contactar al mantenedor a través de:

GitHub: @ajidres
