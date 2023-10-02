import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.6,
      decoration: BoxDecoration(
        color: kSeconderyColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search Product',
          prefixIcon: Icon(Icons.search),
        ),
        onChanged: (value) {
          // search value
        },
      ),
    );
  }
}
