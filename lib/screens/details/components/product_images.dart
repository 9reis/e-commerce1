import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getWidth(0.45, context),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              widget.product.images[selectedImage],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => buildSmallPreview(context, index),
            )
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getWidth(0.05, context)),
        padding: EdgeInsets.all(getWidth(0.02, context)),
        height: getWidth(0.15, context),
        width: getWidth(0.15, context),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selectedImage == index ? kPrimaryColor : Colors.transparent,
            width: 2,
          ),
        ),
        child: Image.asset(
          widget.product.images[index],
        ),
      ),
    );
  }
}
