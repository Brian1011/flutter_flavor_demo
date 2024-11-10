import 'package:flutter/material.dart';
import 'package:flutter_flavor/app_config.dart';
import 'package:flutter_flavor/home_page.dart';

main() async {
  AppConfig.create(
    appName: "Dev Flavor App",
    baseUrl: "https://api.dev.com",
    primaryColor: Colors.green,
    flavor: Flavor.dev,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.shared.appName,
      theme: ThemeData(
        primarySwatch: AppConfig.shared.primaryColor,
        useMaterial3: true,
        primaryColor: AppConfig.shared.primaryColor,
      ),
      home: const MyHomePage(),
    );
  }
}
