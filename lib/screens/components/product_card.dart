import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/Product.dart';
import '../../utils/constants.dart';
import '../../utils/size_config.dart';

class ProductCard extends StatelessWidget {
  final double width;
  final double aspectRetion;
  final Product product;
  final GestureTapCallback press;

  const ProductCard({
    Key? key,
    this.width = 0.3,
    this.aspectRetion = 1.02,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getWidth(0.02, context)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getWidth(0.3, context),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRetion,
                child: Container(
                  padding: EdgeInsets.all(getWidth(0.035, context)),
                  decoration: BoxDecoration(
                    color: kSeconderyColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    product.images[0],
                  ),
                ),
              ),
              Text(
                demoProducts[0].title,
                style: TextStyle(
                  color: Colors.black,
                ),
                maxLines: 2,
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                        fontSize: getWidth(0.045, context),
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(getWidth(0.01, context)),
                      width: getWidth(0.06, context),
                      height: getHeight(0.06, context),
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? kPrimaryColor.withOpacity(0.15)
                            : kSeconderyColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        color: product.isFavourite
                            ? Color(0XFFFF4848)
                            : Color(0XFFDBDEE4),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
