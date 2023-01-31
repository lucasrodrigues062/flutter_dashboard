import 'package:flutter/material.dart' as material;
import 'package:flutter_dashboard/constants/style.dart';
import 'package:flutter_dashboard/routing/routes.dart';
import 'package:get/get.dart';

class SideMenuController extends GetxController {
  static SideMenuController instance = Get.find();
  var activeItem = overViewPageRoute.obs;
  var hoverItem = ''.obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  material.Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overViewPageRoute:
        return _customIcon(material.Icons.trending_up, itemName);
      case driversPageRoute:
        return _customIcon(material.Icons.drive_eta, itemName);
      case clientsPageRoute:
        return _customIcon(material.Icons.people_alt_outlined, itemName);
      case authenticationPageRoute:
        return _customIcon(material.Icons.exit_to_app, itemName);

      default:
        return _customIcon(material.Icons.exit_to_app, itemName);
    }
  }

  material.Widget _customIcon(material.IconData icon, String itemName) {
    if (isActive(itemName)) {
      return material.Icon(
        icon,
        size: 22,
        color: dark,
      );
    }

    return material.Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
