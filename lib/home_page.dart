import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mamoney/home_page/analytics.dart';
import 'package:mamoney/home_page/my_wallet.dart';
import 'package:mamoney/home_page/profile.dart';
import 'package:mamoney/home_page/recent_transaction.dart';
import 'package:mamoney/shared/theme.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
        ),
        child: ListView(
          children: [
            // ! Header
            const MyProfile(),
            const SizedBox(height: 24),

            // ! Body Content
            const MyWallet(),
            const SizedBox(height: 24),

            // ! Body Content

            const AnalyticsCard(),
            const SizedBox(height: 24),

            // !Recent Transaction
            const RecentTransaction(),
            // SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: kWhiteColor,
        gap: 4,
        color: kDarkGreyColor,
        activeColor: kBlackColor,
        onTabChange: (value) {},
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
