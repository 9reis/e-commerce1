import 'package:flutter/material.dart';

import '../../../models/Cart.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class CartItemCard extends StatelessWidget {
  final Cart cart;

  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getWidth(0.22, context),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0XFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                cart.product.images[0],
              ),
            ),
          ),
        ),
        SizedBox(width: getWidth(0.05, context)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              maxLines: 2,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: '\$${cart.product.price}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
                children: [
                  TextSpan(
                      text: ' x${cart.numOfItems}',
                      style: TextStyle(
                        color: kTextColor,
                      )),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
