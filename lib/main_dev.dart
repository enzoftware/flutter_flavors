import 'package:flutter/material.dart';
import 'package:flutter_flavors/config/flavor_config.dart';
import 'package:flutter_flavors/ui/app.dart';


void main() {
  FlavorConfig(
    flavor: Flavor.DEV,
    color: Colors.green,
    values: FlavorValues(
      apiUrl: '/bins/k0p5n',
    ),
  );
  runApp(MyApp());
}
