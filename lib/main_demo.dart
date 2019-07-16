import 'package:flutter/material.dart';
import 'package:flutter_flavors/flavor_config.dart';

import 'app.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.DEMO,
    color: Colors.yellow,
    values: FlavorValues(
      apiUrl: 'https://api.myjson.com/bins/lqut7',
    ),
  );
  runApp(MyApp());
}
