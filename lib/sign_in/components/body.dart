import 'package:ecommerce1/constants.dart';
import 'package:ecommerce1/screens/components/default_button.dart';
import 'package:ecommerce1/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce1/sign_in/components/sign_form.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../screens/components/custom_suffix_icon.dart';
import '../../screens/components/form_error.dart';
import '../../screens/components/no_account_text.dart';
import '../../screens/components/social_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Sign in with your email and password \nor continue with social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SignForm(),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(icon: 'assets/icons/facebook-2.svg', press: () {}),
                  SocialCard(
                      icon: 'assets/icons/google-icon.svg', press: () {}),
                  SocialCard(icon: 'assets/icons/twitter.svg', press: () {}),
                ],
              ),
              SizedBox(height: 20),
              NoAccountText()
            ],
          ),
        ),
      ),
    ));
  }
}


