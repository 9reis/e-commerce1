import 'package:ecommerce1/screens/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../home/home_screen.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Image.asset('assets/images/success.png'),
        SizedBox(height: 40),
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        SizedBox(
          width: 300,
          child: DefaultButton(
              text: 'Back to Home',
              press: () => Navigator.pushNamed(context, HomeScreen.routeName)),
        ),
        Spacer(),
      ],
    );
  }
}
