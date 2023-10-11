import 'package:ecommerce1/screens/details/details_screen.dart';
import 'package:ecommerce1/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../models/Product.dart';
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
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(
                      product: demoProducts[index],
                      press: () => Navigator.pushNamed(
                          context, DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                              product: demoProducts[index])),
                    );
                  return SizedBox.shrink();
                },
              ),
              SizedBox(height: getHeight(0.02, context)),
            ],
          ),
        ),
      ],
    );
  }
}
