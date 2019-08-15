import 'package:flutter/material.dart';
import 'package:flutter_flavors/config/flavor_config.dart';
import 'package:flutter_flavors/ui/app.dart';


void main() {
  FlavorConfig(
    flavor: Flavor.QA,
    color: Colors.red,
    values: FlavorValues(
      apiUrl: '/bins/lmkhn',
    ),
  );
  runApp(MyApp());
}
