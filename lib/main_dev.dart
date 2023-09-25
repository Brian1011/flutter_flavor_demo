import 'package:flutter/material.dart';
import 'package:flutter_flavor/app_config.dart';

import 'main.dart';

main() async {
  await AppConfig.create(
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
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
