import 'package:flutter/material.dart';
import 'package:flutter_dashboard/pages/overview/widgets/info_card.dart';

class OverviewCardsLarge extends StatelessWidget {
  const OverviewCardsLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        InfoCard(
          title: 'Rides in progress',
          value: '7',
          topColor: Colors.orange,
          onTap: () {},
        ),
        SizedBox(
          width: width / 64,
        ),
        InfoCard(
          title: 'Packages delivered',
          value: '17',
          topColor: Colors.lightGreen,
          onTap: () {},
        ),
        SizedBox(
          width: width / 64,
        ),
        InfoCard(
          title: 'Canceled delivery',
          value: '3',
          topColor: Colors.red,
          onTap: () {},
        ),
        SizedBox(
          width: width / 64,
        ),
        InfoCard(
          title: 'Scheduled delivery',
          value: '5',
          onTap: () {},
        ),
        SizedBox(
          width: width / 64,
        ),
      ],
    );
  }
}
