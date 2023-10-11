import 'package:ecommerce1/screens/components/default_button.dart';
import 'package:ecommerce1/utils/constants.dart';
import 'package:ecommerce1/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/Cart.dart';
import 'components/body_cart.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'Your Cart',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              '${demoCarts.length} items',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: BodyCart(),
      bottomNavigationBar: CheckOurCard(),
    );
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getWidth(0.03, context),
          horizontal: getWidth(0.06, context)),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0XFFDADADA).withOpacity(0.30),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getWidth(0.08, context),
                  width: getWidth(0.08, context),
                  decoration: BoxDecoration(
                    color: Color(0XFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset('assets/icons/receipt.svg'),
                ),
                Spacer(),
                Text('Add voucher code'),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 13,
                  color: kTextColor,
                ),
              ],
            ),
            SizedBox(height: getWidth(0.04, context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Total: \n',
                    children: [
                      TextSpan(
                        text: '\$337.15',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: DefaultButton(
                    text: 'Check Out',
                    press: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
