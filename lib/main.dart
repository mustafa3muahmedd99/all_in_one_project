// ignore_for_file: prefer_const_constructors

import 'package:all_in_one_project/core/routes/pages.dart';
import 'package:all_in_one_project/core/routes/routes_name.dart';
import 'package:flutter/material.dart';


void main() {
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.splash,
      onGenerateRoute: AppRoute.generate,
    );
  }
}
