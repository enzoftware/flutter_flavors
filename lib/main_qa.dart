import 'package:flutter/material.dart';
import 'package:flutter_flavors/flavor_config.dart';

import 'app.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.QA,
    color: Colors.red,
  );
  runApp(MyApp());
}
