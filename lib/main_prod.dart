import 'package:flutter/material.dart';
import 'package:flutter_flavors/flavor_config.dart';

import 'app.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.PRODUCTION,
    color: Colors.blue,
    values: FlavorValues(
      apiUrl: 'https://jsonplaceholder.typicode.com/photos',
    ),
  );
  runApp(MyApp());
  
}
