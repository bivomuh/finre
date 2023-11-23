import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mamoney/pages/transfer/transfer_page.dart';
import 'package:mamoney/pages/wallet_page.dart';
import 'package:mamoney/shared/theme.dart';
import 'package:mamoney/widget/widget_card.dart';

class MyWallet extends StatefulWidget {
  int myMoney;

  MyWallet({required this.myMoney, super.key});

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    String formattedNumber = NumberFormat('#,###').format(widget.myMoney);

    return CardWidget(
      child: Column(
        children: [
          // !Content 1: My Wallet
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
                    Icons.wallet,
                    color: kDarkGreyColor,
                    size: 14,
                  )),
              const SizedBox(width: 12),
              Text('My Wallet',
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

          // !Content 2: Total Balance
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(4)),
                  border: Border.all(color: kStrokeColor),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Total Balance ',
                          style: darkGreyTextStyle.copyWith(
                              fontSize: 12, fontWeight: bold),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: kDarkGreyColor,
                          size: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 63,
                padding: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  border: Border.all(color: kStrokeColor),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(4),
                      bottomRight: Radius.circular(4)),
                ),
                child: Center(
                  child: Text(
                    'Rp$formattedNumber',
                    style:
                        blackTextStyle.copyWith(fontSize: 28, fontWeight: bold),
                  ),
                ),
              ),

// ! Transfer Button and Request
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
                                  borderRadius: BorderRadius.circular(8))),
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
                                  myMoney: widget.myMoney,
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
                                  fontWeight: medium, color: kWhiteColor),
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
                            builder: (context) =>
                                WalletPage(myMoney: widget.myMoney),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.arrow_drop_down_circle_outlined),
                          const SizedBox(width: 4),
                          Text(
                            'Request',
                            style: blueTextStyle.copyWith(fontWeight: medium),
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
            ],
          ),
        ],
      ),
    );
  }
}
