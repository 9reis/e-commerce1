import 'package:flutter/material.dart';

import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ProductDetailsArguments { 
  final Product product;
  ProductDetailsArguments({required this.product});
}
