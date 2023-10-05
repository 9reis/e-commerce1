import 'package:flutter/material.dart';

import '../../utils/size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  final IconData iconData;
  final GestureTapCallback press;

  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getWidth(0.04, context),
      width: getWidth(0.04, context),
      child: Padding(
        padding: EdgeInsets.zero,
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
