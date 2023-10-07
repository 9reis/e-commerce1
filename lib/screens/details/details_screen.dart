import 'package:ecommerce1/screens/details/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0XFFF5F6F9),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: Row(
                children: [
                  Text(
                    '4.5',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 3),
                  SvgPicture.asset(
                    'assets/icons/Star Icon.svg',
                    height: 15,
                  )
                ],
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: BodyDetails(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
