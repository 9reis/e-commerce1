import 'package:ecommerce1/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';

import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(size: size),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press: () {},
          ),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
