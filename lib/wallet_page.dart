import 'package:flutter/material.dart';
import 'package:mamoney/shared/theme.dart';
import 'package:mamoney/transfer_page.dart';
import 'package:mamoney/widget/transaction_profile_card.dart';
import 'package:mamoney/widget/visa_card.dart';
import 'package:mamoney/widget/widget_card.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

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
                      const VisaCard(),
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
                                        builder: (context) =>
                                            const TransferToPage(
                                          imageUrl: 'assets/2.jpg',
                                          name: 'Itadori Yuuji',
                                          typeAcc: 'VISA',
                                          noAcc: 123092394,
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
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const WalletPage(),
                                  ),
                                );
                              },
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
                          SizedBox(height: 16),
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
                            imageUrl: 'assets/7.jpg',
                          ),
                          const TransactionProfile(
                            typeTransaction: TypeTransaction.transfer,
                            day: 'Today',
                            imageUrl: 'assets/8.jpg',
                            name: 'Naoya',
                            price: 123939,
                          ),
                          const TransactionProfile(
                            typeTransaction: TypeTransaction.receive,
                            name: 'Sana',
                            day: 'Today',
                            imageUrl: 'assets/7.jpg',
                          ),
                          const TransactionProfile(
                            typeTransaction: TypeTransaction.transfer,
                            day: 'Today',
                            imageUrl: 'assets/8.jpg',
                            name: 'Naoya',
                            price: 123939,
                          ),
                          const TransactionProfile(
                            typeTransaction: TypeTransaction.receive,
                            name: 'Sana',
                            day: 'Today',
                            imageUrl: 'assets/7.jpg',
                          ),
                          const TransactionProfile(
                            typeTransaction: TypeTransaction.transfer,
                            day: 'Today',
                            imageUrl: 'assets/8.jpg',
                            name: 'Naoya',
                            price: 123939,
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
