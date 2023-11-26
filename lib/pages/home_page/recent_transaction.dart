import 'package:Finre/shared/theme.dart';
import 'package:Finre/widget/transaction_profile_card.dart';
import 'package:Finre/widget/widget_card.dart';
import 'package:flutter/material.dart';

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
              const SizedBox(width: 12),
              Text('Recent Transaction',
                  style: blackTextStyle.copyWith(fontWeight: bold)),
              const Spacer(),
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
          const SizedBox(height: 16),
          Container(
            height: 2,
            width: double.infinity,
            color: kStrokeColor,
          ),
          const SizedBox(height: 16),
          const TransactionProfile(
            typeTransaction: TypeTransaction.receive,
            name: 'Sana',
            day: 'Today',
            imageUrl: 'assets/1.jpg',
            time: '01:34 PM',
          ),
          const TransactionProfile(
            typeTransaction: TypeTransaction.transfer,
            day: 'Today',
            imageUrl: 'assets/2.jpg',
            name: 'Naoya',
            price: 55000,
            time: '08:22 AM',
          ),
          const TransactionProfile(
            typeTransaction: TypeTransaction.transfer,
            day: 'Yesterday',
            imageUrl: 'assets/3.jpg',
            name: 'Minato',
            price: 80909,
            time: '07:16 AM',
          ),
          const TransactionProfile(
            typeTransaction: TypeTransaction.transfer,
            day: 'Yesterday',
            imageUrl: 'assets/4.jpg',
            name: 'Araso',
            price: 43000,
            time: '06:01 AM',
          ),
        ],
      ),
    );
  }
}
