import 'package:flutter/material.dart';

// the different flavors of your app should be here
enum Flavor { prod, dev }

class AppConfig {
  String appName = "";
  String baseUrl = "";
  MaterialColor primaryColor = Colors.blue;
  Flavor flavor = Flavor.dev;

  static AppConfig shared = AppConfig.create();

  factory AppConfig.create({
    String appName = "",
    String baseUrl = "",
    MaterialColor primaryColor = Colors.blue,
    Flavor flavor = Flavor.dev,
  }) {
    return shared = AppConfig(appName, baseUrl, primaryColor, flavor);
  }

  AppConfig(this.appName, this.baseUrl, this.primaryColor, this.flavor);
}
