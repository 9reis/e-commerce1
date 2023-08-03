import 'package:ecommerce1/utils/constants.dart';
import 'package:ecommerce1/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../components/social_card.dart';

class BodySignUp extends StatelessWidget {
  const BodySignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text('Register Account', style: headingStyle),
              Text('Comprete your details or continue \nwith social media',
                  textAlign: TextAlign.center),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              SignUpForm(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(icon: 'assets/icons/facebook-2.svg', press: () {}),
                  SocialCard(
                      icon: 'assets/icons/google-icon.svg', press: () {}),
                  SocialCard(icon: 'assets/icons/twitter.svg', press: () {}),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Text(
                'By continuing your confirm that you agree \n with our Term and Condition',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
