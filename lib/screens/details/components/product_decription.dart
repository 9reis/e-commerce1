import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/Product.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(0.05, context),
          ),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getWidth(0.04, context)),
            width: getWidth(0.19, context),
            decoration: BoxDecoration(
                color:
                    product.isFavourite ? Color(0XFFFFE6E6) : Color(0XFFF5F6F9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )),
            child: SvgPicture.asset(
              'assets/icons/Heart Icon_2.svg',
              color:
                  product.isFavourite ? Color(0XFFFF4848) : Color(0XFFDBDEE4),
              height: 25,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getWidth(0.05, context),
            right: getWidth(0.25, context),
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(0.05, context),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: pressOnSeeMore,
            child: Row(
              children: [
                Text(
                  'See More Detail',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 13,
                  color: kPrimaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
