import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mamoney/shared/theme.dart';
import 'package:mamoney/widget/widget_card.dart';

class InsightPage extends StatelessWidget {
  int myMoney;
  InsightPage({required this.myMoney, super.key});

  @override
  Widget build(BuildContext context) {
    String formattedNumber = NumberFormat('#,###').format(myMoney);

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
            'Insight',
            style: blackTextStyle.copyWith(fontWeight: bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CardWidget(
              child: Column(
                children: [
                  // !Content 1: Monthly Analysis
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
                      Text('Monthly Analysis',
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
                            'Details',
                            textAlign: TextAlign.center,
                            style: darkGreyTextStyle.copyWith(fontSize: 12),
                          )),
                    ],
                  ),

                  // !Underline
                  const SizedBox(height: 16),
                  Container(
                    height: 2,
                    width: double.infinity,
                    decoration: BoxDecoration(color: kBackgroundColor),
                  ),
                  const SizedBox(height: 8),

                  // !Content 2:  20 Transaction
                  Row(
                    children: [
                      // !  Transaction complete and photo profile
                      Column(
                        children: [
                          Text(
                            '20 Transactions',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 18),
                          ),
                          Text(
                            'Complete this month',
                            style: blackTextStyle.copyWith(
                              fontWeight: regular,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 8),
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/7.jpg'),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 8),
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/6.jpg'),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 8),
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/8.jpg'),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/stats.png'))),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  //! Content 3: Outcome
                  DefaultTabController(
                    length: 3,
                    child: CardWidget(
                      child: Column(
                        children: [
                          // ! a - outcome top
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
                              Text('Outcome',
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

                              // ! Navigation Bar
                            ],
                          ),

                          // ! Total Spending
                          const SizedBox(height: 16),
                          Column(
                            children: [
                              // ! Total Spending
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 4),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: Color(
                                                              0xffDCFCE7)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            14.0),
                                                    child: Icon(
                                                      Icons
                                                          .account_balance_wallet_outlined,
                                                      color: kGreenColor,
                                                      size: 28,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 8),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Total Spending',
                                                      style: blackTextStyle
                                                          .copyWith(
                                                              fontWeight:
                                                                  regular),
                                                    ),
                                                    Text(
                                                      'Rp12,000',
                                                      style: blackTextStyle
                                                          .copyWith(
                                                              fontSize: 18,
                                                              fontWeight: bold),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              5,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              // ! Tab Controller
                              const TabBar(
                                tabs: [
                                  Tab(
                                    text: 'Daily',
                                  ),
                                  Tab(
                                    text: 'Monthly',
                                  ),
                                  Tab(
                                    text: 'Yearly',
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Image.asset('assets/graph.png')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
