// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce1/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/product.dart';
import '../components/rounded_icon_btn.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF5F6F9),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(),
              child: Row(
                children: [
                  Text(
                    '4.5',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 3),
                  SvgPicture.asset(
                    'assets/icons/Star Icon.svg',
                    height: 15,
                  )
                ],
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

// class CustomAppBar extends PreferredSize {
//   @override
//   // AppBar().preferredSize.height provide us the height that appy on our app bar
//   Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: getWidth(0.02, context)),
//         child: Row(
//           children: [
//             RoundedIconBtn(
//               iconData: Icons.arrow_back_ios,
//               press: () => Navigator.pop(context),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
