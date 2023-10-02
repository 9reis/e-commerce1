import 'package:ecommerce1/screens/home/components/special_offers.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce1/utils/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getHeight(0.02, context)),
            HomeHeader(),
            SizedBox(height: getHeight(0.02, context)),
            DiscountBanner(),
            SizedBox(height: getHeight(0.03, context)),
            Categories(),
            SizedBox(height: getHeight(0.03, context)),
            SpecialOffers()
          ],
        ),
      ),
    );
  }
}
