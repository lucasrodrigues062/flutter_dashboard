import 'package:flutter/material.dart';
import 'package:flutter_dashboard/constants/controllers.dart' as controller;
import 'package:flutter_dashboard/constants/style.dart';
import 'package:flutter_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  const HorizontalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? controller.menuController.onHover(itemName)
            : controller.menuController.onHover('not hovering');
      },
      child: Obx(() => Container(
            color: controller.menuController.isHovering(itemName)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: controller.menuController.isHovering(itemName) ||
                      controller.menuController.isActive(itemName),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                  child: Container(
                    width: 6,
                    height: 40,
                    color: dark,
                  ),
                ),
                SizedBox(
                  width: width / 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: controller.menuController.returnIconFor(itemName),
                ),
                if (!controller.menuController.isActive(itemName))
                  Flexible(
                    child: CustomText(
                      text: itemName,
                      color: controller.menuController.isHovering(itemName)
                          ? dark
                          : lightGrey,
                    ),
                  )
                else
                  Flexible(
                    child: CustomText(
                      text: itemName,
                      color: dark,
                      size: 18,
                      weight: FontWeight.bold,
                    ),
                  )
              ],
            ),
          )),
    );
  }
}
