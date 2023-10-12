import 'package:flutter/material.dart';

import '../../utils/enums.dart';
import 'components/body.dart';
import 'components/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
        centerTitle: true,
      ),
      body: BodyProfile(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
