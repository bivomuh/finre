import 'package:Finre/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({required this.myMoney, super.key});
  final int myMoney;

  @override
  Widget build(BuildContext context) {
    String formattedNumber = NumberFormat('#,###').format(myMoney);

    return Stack(
      children: [
        Image.asset('assets/myframe.png'),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 16),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: kWhiteColor,
            child: const CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/5.jpg'),
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: Container(
            height: 24,
            width: 74,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/visa.png'),
              ),
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 20,
          child: Text(
            'Rp$formattedNumber',
            style:
                TextStyle(color: kWhiteColor, fontWeight: bold, fontSize: 36),
          ),
        ),
        Positioned(
          top: 200,
          left: 20,
          child: Text(
            '08/24 - 10231203910238112',
            style: TextStyle(color: kDarkGreyColor, fontSize: 12),
          ),
        ),
        Positioned(
            top: 180,
            right: 20,
            child: Container(
              width: 36,
              height: 36,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/chip.png'))),
            ))
      ],
    );
  }
}
