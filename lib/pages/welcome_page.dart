import 'package:finans/pages/dashboard_page.dart';
import 'package:finans/styles/assets.dart';
import 'package:finans/styles/typography.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 50, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 310,
                  height: 398,
                  margin: const EdgeInsets.only(bottom: 60),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(welcomePage),
                    ),
                  ),
                ),
              ),
              Text(
                'Effortless.\nIntegrated app.',
                style: blackTextStyle.copyWith(
                  fontSize: 28,
                  fontWeight: semiBold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    ButtomCustom(
                      width: 150,
                      onPressed: () {},
                      text: "Get Started",
                      isPrimary: false,
                    ),
                    Spacer(),
                    ButtomCustom(
                      width: 150,
                      onPressed: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => DashboardPage()),
                        (route) => false,
                      ),
                      text: "Get Started",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

