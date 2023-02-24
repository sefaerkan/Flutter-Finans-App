import 'package:flutter/material.dart';

import '../styles/typography.dart';

class BottomNavbarIc extends StatelessWidget {
  final String icon;
  final bool isActive;

  const BottomNavbarIc({
    Key? key,
    this.icon = "",
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        bottom: 10,
      ),
      child: Image.asset(
        icon,
        width: 21,
        color: isActive ? primaryColor : blackColor,
      ),
    );
  }
}