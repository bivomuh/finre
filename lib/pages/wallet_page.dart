import 'package:flutter/material.dart';
import 'package:mamoney/pages/transfer/transfer_page.dart';
import 'package:mamoney/shared/theme.dart';
import 'package:mamoney/widget/transaction_profile_card.dart';
import 'package:mamoney/widget/visa_card.dart';
import 'package:mamoney/widget/widget_card.dart';

class WalletPage extends StatelessWidget {
  final int myMoney;

  const WalletPage({required this.myMoney, super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

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
          'Wallet',
          style: blackTextStyle.copyWith(fontWeight: bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      VisaCard(myMoney: myMoney),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 138,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(kBlueColor),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TransferToPage(
                                          imageUrl: 'assets/2.jpg',
                                          name: 'Itadori Yuuji',
                                          typeAcc: 'VISA',
                                          noAcc: 123092394,
                                          myMoney: myMoney,
                                        ),
                                      ));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.arrow_outward,
                                      color: kWhiteColor,
                                      size: 18,
                                    ),
                                    Text(
                                      'Transfer',
                                      textAlign: TextAlign.center,
                                      style: blueTextStyle.copyWith(
                                          fontWeight: medium,
                                          color: kWhiteColor),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 148,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                side: MaterialStateProperty.all(
                                  BorderSide(color: kStrokeColor),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                      Icons.arrow_drop_down_circle_outlined),
                                  const SizedBox(width: 4),
                                  Text(
                                    'Request',
                                    style: blueTextStyle.copyWith(
                                        fontWeight: medium),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 37,
                            width: 37,
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              border: Border.all(color: kStrokeColor),
                            ),
                            child: const Icon(
                              Icons.menu,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: CardWidget(
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
                              Text(' Transaction',
                                  style: blackTextStyle.copyWith(
                                      fontWeight: bold)),
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
                                    style: darkGreyTextStyle.copyWith(
                                        fontSize: 12),
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
                          TextField(
                            controller: _searchController,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              // border: OutlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: kRedColor,
                              //   ),
                              // ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(color: kStrokeColor)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(color: kRedColor)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(color: kBlueColor)),
                              hintText: "Search",
                              contentPadding: const EdgeInsets.all(12),
                            ),
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
                            name: 'Kinan',
                            price: 43000,
                            time: '06:01 AM',
                          ),
                          const TransactionProfile(
                            typeTransaction: TypeTransaction.receive,
                            day: 'Today',
                            imageUrl: 'assets/5.jpg',
                            name: 'Sana',
                            price: 23423,
                            time: '06:01 AM',
                          ),
                          const TransactionProfile(
                            typeTransaction: TypeTransaction.transfer,
                            day: 'Nov 16',
                            imageUrl: 'assets/6.jpg',
                            name: 'Azzam',
                            price: 634939,
                            time: '02:01 PM',
                          ),
                          const TransactionProfile(
                            typeTransaction: TypeTransaction.transfer,
                            day: 'Today',
                            imageUrl: 'assets/7.jpg',
                            name: 'Nakamura',
                            price: 74439,
                            time: '06:01 AM',
                          ),
                          const TransactionProfile(
                            typeTransaction: TypeTransaction.transfer,
                            day: 'Today',
                            imageUrl: 'assets/8.jpg',
                            name: 'Sutoyo',
                            price: 52239,
                            time: '06:01 AM',
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
