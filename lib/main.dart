import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:all_in_one_project/core/routes/pages.dart';
import 'package:all_in_one_project/core/routes/routes_name.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) =>const MyApp(),
    enabled: true, 
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      initialRoute: RoutesName.splash,
      onGenerateRoute: AppRoute.generate,
    );
  }
}