import 'package:ecommerce1/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../../utils/size_config.dart';
import '../../components/product_card.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Product',
          press: () {},
        ),
        SizedBox(height: getHeight(0.02, context)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
