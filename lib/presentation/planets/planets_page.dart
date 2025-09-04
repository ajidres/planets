import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:planets/config/constants.dart';
import 'package:planets/presentation/planets/planets_provider.dart';
import 'package:planets/presentation/planets/widget/petition_error_widget.dart';
import 'package:planets/presentation/planets/widget/planet_list_widget.dart';
import 'package:planets/widgets/loading_widget.dart';

class PlanetsPage extends ConsumerWidget {
  const PlanetsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planet = ref.watch(planetsNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Text('Planets', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: galaxyContainer,
        child: planet.when(
          error:
              (error, stackTrace) => PetitionErrorWidget(
            error: planet.error?.toString() ?? '',
          ),
          loading: () => LoadingWidget(),
          data: (planets) => PlanetListWidget(planets: planets),
        ),
      ),
    );
  }
}
