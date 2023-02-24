import 'package:flutter/material.dart';

import '../styles/assets.dart';
import '../styles/typography.dart';

class ShortcutMenu extends StatelessWidget {
  final String icon, text;

  const ShortcutMenu({
    Key? key,
    this.icon = "",
    this.text = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          margin: EdgeInsets.only(bottom: 12),
          padding: EdgeInsets.all(28),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Image.asset(
            icon,
            width: 34,
          ),
        ),
        Text(text),
      ],
    );
  }
}