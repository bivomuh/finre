import 'package:flutter/material.dart';
import 'package:mamoney/shared/theme.dart';
import 'package:mamoney/widget/widget_card.dart';

class AnalyticsCard extends StatelessWidget {
  const AnalyticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                Text('Analytics',
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

                // ! Navigation Bar
              ],
            ),
            SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  border: Border.all(color: kStrokeColor)),
              child: Column(
                children: [
                  TabBar(
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

                  // ! Income and Outcome
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Income'),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffDCFCE7)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          Icons.arrow_downward_rounded,
                                          color: kGreenColor,
                                          size: 14,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Rp12,000',
                                      style: blackTextStyle.copyWith(
                                          fontWeight: bold),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Outcome'),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffFFEDD5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          Icons.arrow_upward_rounded,
                                          color: kOrangeColor,
                                          size: 14,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Rp322,600',
                                      style: blackTextStyle.copyWith(
                                          fontWeight: bold),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
