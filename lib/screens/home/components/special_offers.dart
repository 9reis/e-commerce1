import 'package:ecommerce1/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Special for you',
          press: () {},
        ),
        SizedBox(height: getHeight(0.02, context)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                category: 'Smatphones',
                image: 'assets/images/Image Banner 2.png',
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                category: 'Fashion',
                image: 'assets/images/Image Banner 3.png',
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(height: getHeight(0.03, context)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  final String category;
  final String image;
  final int numOfBrands;
  final GestureTapCallback press;

  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getWidth(0.04, context)),
      child: SizedBox(
        width: getWidth(0.7, context),
        height: getHeight(0.15, context),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0XFF343434).withOpacity(0.4),
                      Color(0XFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(0.03, context),
                    vertical: getWidth(0.02, context)),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: '$category\n',
                        style: TextStyle(
                          fontSize: getWidth(0.03, context),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '$numOfBrands Brands',
                        style: TextStyle(
                          fontSize: getWidth(0.023, context),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
