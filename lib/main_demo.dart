import 'package:flutter/material.dart';
import 'package:flutter_flavors/config/flavor_config.dart';
import 'package:flutter_flavors/ui/app.dart';


void main() {
  FlavorConfig(
    flavor: Flavor.DEMO,
    color: Colors.yellow,
    values: FlavorValues(
      apiUrl: '/bins/lqut7',
    ),
  );
  runApp(MyApp());
}
