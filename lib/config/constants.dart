import 'package:flutter/material.dart';

const BASE_IMAGE = 'assets';
const BASE_API='https://us-central1-a-academia-espacial.cloudfunctions.net';
const FAVORITES_PLANETS = 'favorites';


//ROUTES
const String HOME_ROUTE = '/';
const String PLANET_DETAIL_ROUTE = '/planet_detail';
const String PLANETS_ROUTE = '/planets';

const galaxyContainer = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("$BASE_IMAGE/galaxy.jpg"),
    fit: BoxFit.cover,
  ),
);

const shadowText = [
  Shadow(
    offset: Offset(0.9, 0.9),
    blurRadius: 5.0,
    color: Colors.black87,
  ),
];