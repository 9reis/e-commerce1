import 'package:ecommerce1/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce1/screens/spash_screen.dart';
import 'package:ecommerce1/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

//We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
};
