import 'package:ecommerce1/utils/constants.dart';
import 'package:ecommerce1/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/product_images.dart';

class BodyDetails extends StatelessWidget {
  final Product product;
  const BodyDetails({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductImage(product: product);
  }
}
