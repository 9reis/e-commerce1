import 'package:ecommerce1/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce1/models/Cart.dart';
import 'package:flutter_svg/svg.dart';

import 'cart_item_card.dart';

class BodyCart extends StatefulWidget {
  const BodyCart({super.key});

  @override
  State<BodyCart> createState() => _BodyCartState();
}

class _BodyCartState extends State<BodyCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(0.04, context)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(demoCarts[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0XFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset(
                    'assets/icons/Trash.svg',
                    height: 30,
                  ),
                ],
              ),
            ),
            child: CartItemCard(
              cart: demoCarts[index],
            ),
            onDismissed: (_) {
              setState(() {
                demoCarts.removeAt(index);
              });
            },
          ),
        ),
      ),
    );
  }
}
