import 'package:ecommerce1/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have account?",
          style: TextStyle(fontSize: 16),
        ),
        InkWell(
          splashColor: kPrimaryColor,
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            'Sign Up',
            style: TextStyle(color: kPrimaryColor, fontSize: 16),
          ),
        )
      ],
    );
  }
}
