import 'package:flutter/material.dart';
import 'package:mamoney/shared/theme.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: kWhiteColor,
          child: const CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('assets/5.jpg'),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning!',
              style: blackTextStyle,
            ),
            Text(
              'Bivo Muhandeza',
              style: blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
            ),
          ],
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: kGreyColor,
              width: 2.0,
            ),
          ),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: kWhiteColor,
            child: Icon(
              Icons.notifications_none,
              color: kBlackColor,
              size: 24,
            ),
          ),
        ),
      ],
    );
  }
}
