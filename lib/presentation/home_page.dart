import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planets/config/constants.dart';
import 'package:planets/widgets/button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: galaxyContainer,
        child: Center(
          child: ButtonWidget(
            onPressed: () {
              context.push(PLANETS_ROUTE);
            },
            text: 'See plannets',
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
