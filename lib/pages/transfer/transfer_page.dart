import 'package:Finre/main_page.dart';
import 'package:Finre/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:pattern_formatter/pattern_formatter.dart';

class TransferToPage extends StatefulWidget {
  TransferToPage(
      {required this.imageUrl,
      required this.name,
      required this.typeAcc,
      required this.noAcc,
      required this.myMoney,
      Key? key})
      : super(key: key);

  final String imageUrl;
  final String name;
  final String typeAcc;
  final int noAcc;
  int myMoney;

  @override
  State<TransferToPage> createState() => _TransferToPageState();
}

class _TransferToPageState extends State<TransferToPage> {
  TextEditingController _nominalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int newMoney = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Text(
          'Transfer',
          style: blackTextStyle.copyWith(fontWeight: FontWeight.w700),
        ),
        leading: const BackButton(),
        centerTitle: true,
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
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
                  const SizedBox(width: 8),
                  Text('Saldo = Rp${widget.myMoney}'),
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
              const SizedBox(height: 24),

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
                      const SizedBox(height: 4),
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
              const SizedBox(height: 24),
              Container(
                height: 2,
                width: double.infinity,
                color: kStrokeColor,
              ),
              const SizedBox(height: 16),

              //! Transfer Nominal

              Text(
                'Amount',
                style: blueTextStyle,
              ),

              TextField(
                controller: _nominalController,
                onSubmitted: (value) {},
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
              const SizedBox(height: 48),

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
                      try {
                        setState(() {
                          showSnackbar(context, 'Dana berhasil terkirim!');

                          String amount = _nominalController.text;
                          int amountInt = int.parse(amount);

                          widget.myMoney -= amountInt;
                          newMoney = widget.myMoney;
                        });
                      } catch (e) {
                        showSnackbar(
                            context, 'Dana gagal terkirim, silakan coba lagi');
                      }

                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(myMoney: newMoney),
                          ),
                          (route) => false);
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

  void showSnackbar(BuildContext context, String messsege) {
    // Gunakan ScaffoldMessenger untuk menampilkan Snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(messsege),
        duration: const Duration(seconds: 2), // Durasi Snackbar ditampilkan
        action: SnackBarAction(
          label: 'Tutup',
          onPressed: () {
            // Aksi yang diambil ketika tombol aksi Snackbar ditekan
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nominalController.dispose();
    super.dispose();
  }
}
