import 'package:flutter/material.dart';
import 'package:flutter_dashboard/constants/controllers.dart';
import 'package:flutter_dashboard/helpers/responsive_widget.dart';
import 'package:flutter_dashboard/pages/overview/widgets/overview_cards_large.dart';
import 'package:flutter_dashboard/pages/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_dashboard/pages/overview/widgets/overview_cards_small.dart';
import 'package:flutter_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(context))
              const OverviewCardsLarge()
            else if (ResponsiveWidget.isMediumScreen(context) ||
                ResponsiveWidget.isCustomSize(context))
              const OverviewCardsMedium()
            else
              const OverviewCardsSmall()
          ],
        ))
      ],
    );
  }
}
