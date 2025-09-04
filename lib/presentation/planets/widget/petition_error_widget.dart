import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planets/presentation/planets/planets_provider.dart';
import 'package:planets/widgets/button_widget.dart';

class PetitionErrorWidget extends ConsumerWidget {
  final String error;

  const PetitionErrorWidget({required this.error, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            error,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  offset: Offset(0.9, 0.9),
                  blurRadius: 5.0,
                  color: Colors.black87,
                ),
              ],
            ),
          ),
          ButtonWidget(
            onPressed: () {
              ref.invalidate(planetsNotifierProvider);
            },
            text: 'Try again',
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}