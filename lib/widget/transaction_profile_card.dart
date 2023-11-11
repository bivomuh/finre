import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mamoney/shared/theme.dart';

enum TypeTransaction { receive, transfer }

class TransactionProfile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String day;

  final String time;
  final int price;
  final TypeTransaction typeTransaction;

  const TransactionProfile(
      {this.imageUrl = 'assets/2.jpg',
      this.day = 'Today',
      this.name = 'Bivo M',
      this.price = 213350,
      this.time = '12.00 PM',
      required this.typeTransaction,
      super.key});

  @override
  Widget build(BuildContext context) {
    String formattedNumber = NumberFormat('#,###').format(price);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: kBlueColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: kStrokeColor, width: 3),
          ),
          child: Image.asset(
            imageUrl,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            Text(
              '$day, $time',
              style: greyTextStyle,
            )
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: typeTransaction == TypeTransaction.receive
                          ? '+ Rp'
                          : '- Rp',
                      style: typeTransaction == TypeTransaction.receive
                          ? greenTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold)
                          : redTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold)),
                  TextSpan(
                    text: formattedNumber,
                    style: typeTransaction == TypeTransaction.receive
                        ? greenTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold)
                        : redTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                  ),
                ],
              ),
            ),
            Text(
                typeTransaction == TypeTransaction.receive
                    ? 'Receive'
                    : 'Transfer',
                style: greyTextStyle),
          ],
        ),
      ]),
    );
  }
}
