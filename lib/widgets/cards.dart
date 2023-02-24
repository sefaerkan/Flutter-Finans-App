import 'package:flutter/material.dart';

import '../styles/typography.dart';

class Cards extends StatelessWidget {
  final String image;
  const Cards({
    Key? key,
    this.image = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 190,
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Current Balance",
            style: whiteTextStyle.copyWith(fontSize: 13),
          ),
          SizedBox(height: 4),
          Text(
            '\$12,480,209',
            style: whiteTextStyle.copyWith(
              fontSize: 28,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(height: 40),
          Text(
            "••••  ••••  ••••  3901",
            style: whiteTextStyle.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
