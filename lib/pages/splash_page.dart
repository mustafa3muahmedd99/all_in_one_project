import 'package:all_in_one_project/core/constants/colors.dart';
import 'package:all_in_one_project/core/routes/routes_name.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.of(context).pushReplacementNamed(RoutesName.home);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
          child: Center(
        child: Text(
          'AIO App',
          style: TextStyle(
              fontSize: 60,
              color: AppColor.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'SUSE'),
        ),
      )),
    );
  }
}
