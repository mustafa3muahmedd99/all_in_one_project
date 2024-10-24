// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:all_in_one_project/core/constants/colors.dart';
import 'package:all_in_one_project/core/routes/routes_name.dart';
import 'package:all_in_one_project/widgets/starter_app_item.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: AppColor.bg,
      body: _body(),
    );
  }

  SafeArea _body() {
    return SafeArea(child: Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        StarterAppItem(
          imagePath: 'assets/images/lighter.png',
          title: 'Lighter App',
          routesName: RoutesName.lighterApp,
        ),
        StarterAppItem(
          imagePath: 'assets/images/basket.png',
          title: 'BasketBall App',
          routesName: RoutesName.basketApp,
        ),
        StarterAppItem(
          imagePath: 'assets/images/calc.png',
          title: 'Calculator App',
          routesName: RoutesName.calculatorApp,
        ),
        StarterAppItem(
          imagePath: 'assets/images/xo.png',
          title: 'Tic Tac App',
          routesName: RoutesName.xoApp,
        ),
      ],
    ),
    ));
  }

  AppBar _appBar() {
    return AppBar(title: Text('Home Page',
    style: TextStyle(
      color: AppColor.white
    ),
    ),
    backgroundColor: AppColor.black,
    );
  }
}