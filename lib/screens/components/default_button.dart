import 'package:flutter/material.dart';

import '../../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
    required this.press,
  });
  final String text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56, //getProportionateScreenHeight(56),
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
        onPressed: press,
      ),
    );
  }
}
