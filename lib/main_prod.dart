import 'package:flutter/material.dart';
import 'package:flutter_flavors/config/flavor_config.dart';
import 'package:flutter_flavors/ui/app.dart';



void main() {
  FlavorConfig(
    flavor: Flavor.PRODUCTION,
    color: Colors.blue,
    values: FlavorValues(
      apiUrl: '/photos',
    ),
  );
  runApp(MyApp());
  
}
