import 'package:flutter/material.dart';

import '../../utils/size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  final IconData iconData;
  final GestureTapCallback press;
  final double size;

  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getWidth(size, context),
      width: getWidth(size, context),
      child: Container(
        padding: EdgeInsets.zero,
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          child: Icon(
            iconData,
            color: Colors.black,
          ),
          onPressed: press,
        ),
      ),
    );
  }
}
