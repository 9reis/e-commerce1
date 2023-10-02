import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants.dart';

class IconBtnWithCounter extends StatelessWidget {
  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfItems = 0,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: press,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(14),
            width: size.width * 0.1,
            height: size.height * 0.1,
            decoration: BoxDecoration(
              color: kSeconderyColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItems != 0)
            Positioned(
              top: 2,
              right: 0,
              child: Container(
                height: size.height * 0.03,
                width: size.width * 0.03,
                decoration: BoxDecoration(
                  color: Color(0XFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.1,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    '$numOfItems',
                    style: TextStyle(
                      fontSize: size.height * 0.016,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
