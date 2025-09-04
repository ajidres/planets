import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:planets/config/constants.dart';
import 'package:planets/domain/planet_entity.dart';
import 'package:planets/presentation/planets/planets_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlanetListWidget extends ConsumerWidget {
  final List<PlanetEntity> planets;

  const PlanetListWidget({required this.planets, super.key});



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      child: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onChanged: (value) {
                  ref
                      .read(planetsNotifierProvider.notifier)
                      .onSearchUser(value);
                },
                cursorColor: Colors.white,
                style: TextStyle(fontSize: 16, color: Colors.white, shadows: shadowText),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Search...',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.white, shadows: shadowText),
                ),
              ),
            ),
          ),
          if (planets.isEmpty)
            Expanded(
              child: Center(
                child: Text(
                  'No planets found',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: shadowText,
                  ),
                ),
              ),
            ),
          if (planets.isNotEmpty)
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: planets.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      context.push(PLANET_DETAIL_ROUTE, extra: planets[index]);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: Image.network(planets[index].image).image,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      padding: EdgeInsets.all(18),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              planets[index].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 5,
                                shadows: shadowText,
                              ),
                            ),
                          ),
                          IconButton(icon: Icon(planets[index].isFavorite?Icons.star:Icons.star_border, color: Colors.yellowAccent,size: 30,),
                          onPressed: (){
                            ref
                                .read(planetsNotifierProvider.notifier).saveFavorite(planets[index]);
                          },)

                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
