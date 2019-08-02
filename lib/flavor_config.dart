import 'dart:core';
import 'dart:core' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter_flavors/utils.dart';

enum Flavor {
  DEV,
  QA,
  PRODUCTION,
  DEMO,
}

class FlavorValues {
  FlavorValues({@required this.apiUrl});
  final String apiUrl;
  /// Add other flavor specific values, 
  /// e.g database name, free or paid
}

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final Color color;
  final FlavorValues values;
  static FlavorConfig _instance;

  factory FlavorConfig({
    @required Flavor flavor,
    Color color: Colors.pink,
    @required FlavorValues values,
  }) {
    _instance ??= FlavorConfig._internal(
      flavor,
      StringUtils.enumName(flavor.toString()),
      color,
      values,
    );
    return _instance;
  }

  FlavorConfig._internal(
    this.flavor,
    this.name,
    this.color,
    this.values,
  ); //, this.values);
  static FlavorConfig get instance {
    return _instance;
  }

  static bool isProduction() => _instance.flavor == Flavor.PRODUCTION;
  static bool isDevelopment() => _instance.flavor == Flavor.DEV;
  static bool isQA() => _instance.flavor == Flavor.QA;
  static bool isDemo() => _instance.flavor == Flavor.DEMO;
}
