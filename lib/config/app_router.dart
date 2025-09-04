
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:planets/domain/planet_entity.dart';
import 'package:planets/presentation/planet_detail_page.dart';
import 'package:planets/presentation/home_page.dart';
import 'package:planets/presentation/planets/planets_page.dart';

import 'constants.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: HOME_ROUTE,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: PLANET_DETAIL_ROUTE,
          builder: (BuildContext context, GoRouterState state) {
            return  PlanetDetailPage(planet: state.extra as PlanetEntity);
          },
        ),
        GoRoute(
          path: PLANETS_ROUTE,
          builder: (BuildContext context, GoRouterState state) {
            return const PlanetsPage();
          },
        )
      ],
    ),
  ],
);