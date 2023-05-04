
import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreenItems {
  final String name;
  final String imageName;

  const HomeScreenItems({
    required this.name,
    required this.imageName,
  });

}



class HomeScreenCategoryItems {
  final String name;
  final Icon image;

  const HomeScreenCategoryItems({
    required this.name,
    required this.image,
  });

}

class HomeScreenDestinationItems {
  final String name;
  final String imageName;
  final String country;
  final double latitude;
  final double longitude;

  const HomeScreenDestinationItems({
    required this.name,
    required this.imageName,
    required this.country,
    required this.latitude,
    required this.longitude
  });

}