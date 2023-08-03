import 'package:ecommerce1/screens/components/default_button.dart';
import 'package:ecommerce1/screens/components/form_error.dart';
import 'package:ecommerce1/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../components/custom_suffix_icon.dart';
import 'complete_profile_form.dart';

class BodyCompletePage extends StatelessWidget {
  BodyCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: deviceSize.height * 0.02),
            Text(
              'Complete Profile',
              style: headingStyle,
            ),
            Text(
              'Complete your details or contine \nwith social media',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: deviceSize.height * 0.05),
            CompleteProfileForm(),
            SizedBox(height: deviceSize.height * 0.03),
            Text(
              'By continuing your that you agree \nwith our Term and Condition',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
