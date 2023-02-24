import 'package:flutter/material.dart';
import '../pages/dashboard_page.dart';
import '../styles/typography.dart';

class ButtomCustom extends StatelessWidget {
  final String text;
  final double width;
  final bool isPrimary;
  final Function() onPressed;

  const ButtomCustom({
    Key? key,
    this.width = double.infinity,
    required this.onPressed,
    required this.text,
    this.isPrimary = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isPrimary ? primaryColor : secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text("Get Started",
            style: isPrimary
                ? whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold
            )
                : altblackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
      ),
    );
  }
}