import 'package:flutter/material.dart';
import 'package:flutter_dashboard/constants/style.dart';
import 'package:flutter_dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:flutter_dashboard/pages/overview/widgets/revenue_info.dart';
import 'package:flutter_dashboard/widgets/custom_text.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: lightGrey.withOpacity(.1),
            blurRadius: 12,
          ),
        ],
        border: Border.all(color: lightGrey, width: .5),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomText(
                  text: 'Revenue Chart',
                  size: 20,
                  weight: FontWeight.bold,
                  color: lightGrey,
                ),
                SizedBox(
                  width: 600,
                  height: 200,
                  child: BarChartSample1(),
                )
              ],
            ),
          ),
          Container(
            width: 120,
            height: 1,
            color: lightGrey,
          ),
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    RevenueInfo(
                      title: 'Today revenue',
                      amount: '15',
                    ),
                    RevenueInfo(
                      title: 'last 7 days',
                      amount: '150',
                    )
                  ],
                ),
                Row(
                  children: const [
                    RevenueInfo(
                      title: 'last 30 days',
                      amount: '1200',
                    ),
                    RevenueInfo(
                      title: 'last 90 days',
                      amount: '1500',
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
