import 'package:ecommerce1/screens/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/color_dots.dart';
import 'components/product_decription.dart';
import 'components/product_images.dart';
import 'components/top_rounded_container.dart';

class BodyDetails extends StatelessWidget {
  final Product product;
  const BodyDetails({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImage(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0XFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(
                        product: product,
                      ),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 50,
                            right: 50,
                            top: 15,
                            bottom: 7,
                          ),
                          child: DefaultButton(
                            text: 'Add to Cart',
                            press: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
