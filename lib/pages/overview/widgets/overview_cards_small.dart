import 'package:flutter/material.dart';
import 'package:flutter_dashboard/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
              title: 'Rides in progress',
              value: '7',
              topColor: Colors.orange,
              onTap: () {}),
          SizedBox(
            width: width / 64,
          ),
          InfoCardSmall(
              title: 'Packages delivered',
              value: '17',
              topColor: Colors.green,
              onTap: () {}),
          SizedBox(
            width: width / 64,
          ),
          InfoCardSmall(
              title: 'Canceled delivery',
              value: '3',
              topColor: Colors.red,
              onTap: () {}),
          SizedBox(
            width: width / 64,
          ),
          InfoCardSmall(title: 'Scheduled elivery', value: '5', onTap: () {}),
          SizedBox(
            width: width / 64,
          )
        ],
      ),
    );
  }
}
