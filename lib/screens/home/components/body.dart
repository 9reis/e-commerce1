import 'package:flutter/material.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            HomeHeader(),
            SizedBox(height: size.height * 0.02),
            DiscountBanner(),
            SizedBox(height: size.height * 0.03),
            Categories()
          ],
        ),
      ),
    );
  }
}
