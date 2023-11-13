//this page for Bottom Navigation Bar as Default

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mamoney/pages/home_page.dart';
import 'package:mamoney/pages/insight.dart';
import 'package:mamoney/pages/profile_page.dart';
import 'package:mamoney/pages/wallet_page.dart';
import 'package:mamoney/shared/theme.dart';

class MainPage extends StatefulWidget {
  int myMoney;

  MainPage({required this.myMoney, super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetPage = <Widget>[
      MyHomePage(
        myMoney: widget.myMoney,
      ),
      WalletPage(myMoney: widget.myMoney),
      const InsightPage(),
      const ProfilePage()
    ];

    return Scaffold(
      body: Center(child: _widgetPage.elementAt(_selectedIndex)),
      bottomNavigationBar: GNav(
        haptic: true, // haptic feedback

        backgroundColor: kWhiteColor,
        gap: 8,
        color: kDarkGreyColor,
        activeColor: kBlackColor,
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.wallet,
            text: 'Wallet',
          ),
          GButton(
            icon: Icons.bar_chart_outlined,
            text: 'Insight',
          ),
          GButton(
            icon: Icons.account_circle,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
