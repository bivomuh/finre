import 'package:Finre/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        leading: const BackButton(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
        title: Text(
          'Profile',
          style: blackTextStyle.copyWith(fontWeight: bold),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            CircleAvatar(
              radius: 80,
              backgroundColor: kWhiteColor,
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/5.jpg'),
              ),
            ),
            const SizedBox(height: 48),

            // !Profile
            Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: kWhiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'My Profile',
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: bold),
                    ),
                    const SizedBox(height: 10),
                    Container(height: 2, color: kGreyColor),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        const Icon(Icons.person, size: 24),
                        const SizedBox(width: 20),
                        Text(
                          'Bivo Muhandeza',
                          style: blackTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Icon(Icons.calendar_month_outlined, size: 24),
                        const SizedBox(width: 20),
                        Text(
                          '21 Mei 1931',
                          style: blackTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Icon(Icons.phone, size: 24),
                        const SizedBox(width: 20),
                        Text(
                          '021 02214 23942',
                          style: blackTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Icon(Icons.image, size: 24),
                        const SizedBox(width: 20),
                        Text(
                          'Instagram Account',
                          style: blackTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Icon(Icons.mail_outline, size: 24),
                        const SizedBox(width: 20),
                        Text(
                          'aku@gimail.com',
                          style: blackTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Icon(Icons.remove_red_eye, size: 24),
                        const SizedBox(width: 20),
                        Text(
                          'Password',
                          style: blackTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Update Profile'),
              style: ElevatedButton.styleFrom(
                  foregroundColor: kWhiteColor, backgroundColor: kBlueColor),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
