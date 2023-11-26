import 'package:Finre/pages/home_page/analytics.dart';
import 'package:Finre/pages/home_page/my_wallet.dart';
import 'package:Finre/pages/home_page/profile.dart';
import 'package:Finre/pages/home_page/recent_transaction.dart';
import 'package:Finre/shared/theme.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  int myMoney;
  MyHomePage({required this.myMoney, super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            MyWallet(myMoney: widget.myMoney),
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
    );
  }
}
