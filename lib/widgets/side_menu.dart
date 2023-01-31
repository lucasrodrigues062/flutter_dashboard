import 'package:flutter/material.dart';
import 'package:flutter_dashboard/constants/controllers.dart';
import 'package:flutter_dashboard/constants/style.dart';
import 'package:flutter_dashboard/helpers/responsive_widget.dart';
import 'package:flutter_dashboard/routing/routes.dart';
import 'package:flutter_dashboard/widgets/custom_text.dart';
import 'package:flutter_dashboard/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(children: [
        if (ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width / 48,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset('assets/icons/logo.png'),
                  ),
                  const Flexible(
                    child: CustomText(
                      text: 'Dash',
                      size: 20,
                      weight: FontWeight.bold,
                      color: active,
                    ),
                  ),
                  SizedBox(width: width / 48)
                ],
              ),
            ],
          ),
        const SizedBox(
          height: 40,
        ),
        Divider(
          color: lightGrey.withOpacity(.1),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuitems
              .map(
                (itemName) => SideMenuItem(
                    itemName: itemName == authenticationPageRoute
                        ? 'Log Out'
                        : itemName,
                    onTap: () {
                      if (itemName == authenticationPageRoute) {
                        // TODO autheticatio page
                      }
                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItemTo(itemName);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                        navigationController.navigateTo(itemName);
                      }
                    }),
              )
              .toList(),
        )
      ]),
    );
  }
}
