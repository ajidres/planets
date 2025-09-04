import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planets/config/constants.dart';
import 'package:planets/domain/planet_entity.dart';
import 'package:planets/widgets/text_detail_widget.dart';

class PlanetDetailPage extends StatelessWidget {
  final PlanetEntity planet;

  const PlanetDetailPage({required this.planet, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Text(
          planet.name,
          style: TextStyle(
            fontSize: 32,
            letterSpacing: 5,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: shadowText,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: galaxyContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.network(
                  planet.image,
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description:',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          shadows: shadowText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        planet.description,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          shadows: shadowText,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      spacer,
                      TextDetailWidget(title: 'Moons: ',value: planet.moons.toString()),
                      spacer,
                      TextDetailWidget(title: 'Atmosphere Composition: ',value: planet.atmosphereComposition),
                      spacer,
                      TextDetailWidget(title: 'Orbital Speed Kmh: ',value: planet.orbitalSpeedKmh.toString()),
                      spacer,
                      TextDetailWidget(title: 'Year Length Earth Days: ',value: planet.yearLengthEarthDays.toString()),
                      spacer,
                      TextDetailWidget(title: 'Day Length Earth Days: ',value: planet.dayLengthEarthDays.toString()),
                      spacer,
                      TextDetailWidget(title: 'Escape Velocity Kmh: ',value: planet.escapeVelocityKmh.toString()),
                      spacer,
                      TextDetailWidget(title: 'Orbital Distance Km: ',value: planet.orbitalDistanceKm.toString()),
                      spacer,
                      TextDetailWidget(title: 'Equatorial Radius Km: ',value: planet.equatorialRadiusKm.toString()),
                      spacer,
                      TextDetailWidget(title: 'Volume Km3: ',value: planet.volumeKm3.toString()),
                      spacer,
                      TextDetailWidget(title: 'Mass Kg: ',value: planet.massKg.toString()),
                      spacer,
                      TextDetailWidget(title: 'Density GCm3: ',value: planet.densityGCm3.toString()),
                      spacer,
                      TextDetailWidget(title: 'Surface Gravity MS2: ',value: planet.surfaceGravityMS2.toString()),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const spacer= SizedBox(height: 5);