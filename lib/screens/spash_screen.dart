import 'package:ecommerce1/screens/components/body.dart';
import 'package:ecommerce1/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
