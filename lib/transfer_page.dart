import 'package:flutter/material.dart';
import 'package:mamoney/shared/theme.dart';
import 'package:pattern_formatter/pattern_formatter.dart';

class TransferToPage extends StatefulWidget {
  const TransferToPage(
      {required this.imageUrl,
      required this.name,
      required this.typeAcc,
      required this.noAcc,
      super.key});

  final String imageUrl;
  final String name;
  final String typeAcc;
  final int noAcc;

  @override
  State<TransferToPage> createState() => _TransferToPageState();
}

class _TransferToPageState extends State<TransferToPage> {
  TextEditingController _nominalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Text(
          'Transfer',
          style: blackTextStyle.copyWith(fontWeight: FontWeight.w700),
        ),
        leading: BackButton(),
        centerTitle: true,
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: kWhiteColor,
          border: Border.all(color: kStrokeColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Content 1: My Wallet
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
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text('My Wallet',
                      style:
                          blackTextStyle.copyWith(fontWeight: FontWeight.bold)),
                  const Spacer(),
                  Container(
                    width: 56,
                    height: 21,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: kStrokeColor),
                    ),
                    child: Center(
                      child: Text(
                        'Change',
                        style: darkGreyTextStyle.copyWith(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),

              Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: kStrokeColor, width: 3),
                    ),
                    child: Image.asset(
                      widget.imageUrl,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            '${widget.typeAcc} - ',
                            style: greyTextStyle,
                          ),
                          Text(
                            widget.noAcc.toString(),
                            style: greyTextStyle,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
              Container(
                height: 2,
                width: double.infinity,
                color: kStrokeColor,
              ),
              SizedBox(height: 16),

              //! Transfer Nominal

              Text(
                'Amount',
                style: blueTextStyle,
              ),

              TextField(
                controller: _nominalController,
                keyboardType: TextInputType.number,
                inputFormatters: [ThousandsFormatter()],
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  prefix: Text(
                    'Rp',
                    style: TextStyle(color: kBlackColor),
                    textAlign: TextAlign.center,
                  ),
                ),
                style: TextStyle(
                    fontSize: 48, fontWeight: semiBold, color: kBlackColor),
              ),
              SizedBox(height: 48),

              //! Transfer button

              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kBlueColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
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
            ],
          ),
        ),
      )),
    );
  }

  @override
  void dispose() {
    _nominalController.dispose();
    super.dispose();
  }
}
