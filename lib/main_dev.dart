import 'package:flutter/material.dart';
import 'package:flutter_flavors/flavor_config.dart';

import 'app.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.DEV,
    color: Colors.green,
    values: FlavorValues(
      apiUrl: 'https://api.myjson.com/bins/k0p5n',
    ),
  );
  runApp(MyApp());
}
