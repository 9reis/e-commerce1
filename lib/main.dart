import 'package:ecommerce1/sign_in/sign_in_screen.dart';
import 'package:ecommerce1/theme.dart';
import 'package:ecommerce1/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SignInScreen.routeName,
      // SplashScreen.routeName,
      routes: routes,
    );
  }
}
