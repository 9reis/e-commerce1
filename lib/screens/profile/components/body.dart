import 'package:ecommerce1/screens/profile/components/profile_menu.dart';
import 'package:flutter/material.dart';

import 'profile_pic.dart';

class BodyProfile extends StatelessWidget {
  const BodyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          text: 'My Account',
          icon: 'assets/icons/User Icon.svg',
          press: () {},
        ),
        ProfileMenu(
          text: 'Notifications',
          icon: 'assets/icons/Bell.svg',
          press: () {},
        ),
        ProfileMenu(
          text: 'Settings',
          icon: 'assets/icons/Question mark.svg',
          press: () {},
        ),
        ProfileMenu(
          text: 'Help Center',
          icon: 'assets/icons/User Icon.svg',
          press: () {},
        ),
        ProfileMenu(
          text: 'Logout',
          icon: 'assets/icons/Log Out.svg',
          press: () {},
        ),
      ],
    );
  }
}
