import 'package:finans/pages/welcome_page.dart';
import 'package:finans/styles/assets.dart';
import 'package:finans/styles/typography.dart';
import 'package:flutter/material.dart';
import '../widgets/bottomnavbar_ic.dart';
import '../widgets/button.dart';
import '../widgets/cards.dart';
import '../widgets/detail_notification.dart';
import '../widgets/shortcut_menu.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void openNotification() {
      showModalBottomSheet(
        context: context,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            )),
        builder: (context) => Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(color: whiteColor),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 17),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(icGoogle),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Google Drive",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(width: 5),
                  Image.asset(icVerified, width: 16),
                ],
              ),
              SizedBox(height: 6),
              Text(
                "12.30 PM",
                style: greyTextStyle,
              ),
              SizedBox(height: 30),
              Text("- \$20,500",
                  style: blackTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: semiBold,
                  )),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: Column(
                  children: [
                    DetailNotification(
                      title: 'CloudOne 10GB',
                      value: '\$15,000',
                    ),
                    SizedBox(height: 16),
                    DetailNotification(
                      title: 'Workspace',
                      value: '\$500',
                    ),
                    SizedBox(height: 16),
                    DetailNotification(
                      title: 'Stream Maxx',
                      value: '\$5000',
                    ),
                  ],
                ),
              ),
              ButtomCustom(
                onPressed: () => Navigator.pop(context),
                text: 'Ok, Close',
              ),
            ],
          ),
        ),
      );
    }

    Widget _mainMenu() {
      return Container(
        margin: EdgeInsets.only(left: 24, top: 30, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Main Menus",
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            SizedBox(height: 18),
            GridView.count(
              shrinkWrap: true,
              childAspectRatio: .7,
              crossAxisCount: 3,
              mainAxisSpacing: 18,
              children: [
                ShortcutMenu(
                  icon: icTopup,
                  text: 'Top Up',
                ),
                ShortcutMenu(
                  icon: icTransfer,
                  text: 'Transfer',
                ),
                ShortcutMenu(
                  icon: icBills,
                  text: 'Bills',
                ),
                ShortcutMenu(
                  icon: icWithdraw,
                  text: 'Withdraw',
                ),
                ShortcutMenu(
                  icon: icReward,
                  text: 'Reward',
                ),
                ShortcutMenu(
                  icon: icNearby,
                  text: 'Nearby',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget _cards() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 24),
            Cards(image: cardGreen),
            Cards(image: cardPurple),
          ],
        ),
      );
    }

    Widget _navBar() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 24,
        ),
        child: Row(
          children: [
            Text(
              "Dashboard",
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: openNotification,
              child: Stack(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(icNotification),
                    )),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 8,
                        height: 8,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffe79A2A),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget _bottomBar() {
      return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: BottomNavbarIc(
                icon: fiHome,
                isActive: true,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: BottomNavbarIc(
                icon: fiCalendar,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: BottomNavbarIc(
                icon: fiBriefcase,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: BottomNavbarIc(
                icon: fiSettings,
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    Widget _buttonScan() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child: Image.asset(
          fiScan,
          width: 20,
          height: 20,
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor,
      floatingActionButton: _buttonScan(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _bottomBar(),
      body: SafeArea(
        child: Column(
          children: [
            _navBar(),
            _cards(),
            _mainMenu(),
          ],
        ),
      ),
    );
  }
}








