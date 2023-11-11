import 'package:flutter/material.dart';
import 'package:mamoney/shared/theme.dart';
import 'package:mamoney/widget/transaction_profile_card.dart';
import 'package:mamoney/widget/widget_card.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: kStrokeColor),
                  ),
                  child: Icon(
                    Icons.bar_chart_rounded,
                    color: kDarkGreyColor,
                    size: 14,
                  )),
              SizedBox(width: 12),
              Text('Recent Transaction',
                  style: blackTextStyle.copyWith(fontWeight: bold)),
              Spacer(),
              Container(
                  width: 56,
                  height: 21,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: kStrokeColor),
                  ),
                  child: Text(
                    'View',
                    textAlign: TextAlign.center,
                    style: darkGreyTextStyle.copyWith(fontSize: 12),
                  )),
            ],
          ),
          SizedBox(height: 16),
          Container(
            height: 2,
            width: double.infinity,
            color: kStrokeColor,
          ),
          SizedBox(height: 16),
          TransactionProfile(
            typeTransaction: TypeTransaction.receive,
            name: 'Sana',
            day: 'Today',
            imageUrl: 'assets/7.jpg',
          ),
          TransactionProfile(
            typeTransaction: TypeTransaction.transfer,
            day: 'Today',
            imageUrl: 'assets/8.jpg',
            name: 'Naoya',
            price: 123939,
          ),
        ],
      ),
    );
  }
}
