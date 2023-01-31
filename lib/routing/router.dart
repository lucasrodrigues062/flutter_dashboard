import 'package:flutter/material.dart';
import 'package:flutter_dashboard/pages/authentication/authentication_page.dart';
import 'package:flutter_dashboard/pages/clients/clients_page.dart';
import 'package:flutter_dashboard/pages/drivers/drivers_page.dart';
import 'package:flutter_dashboard/pages/overview/overview_page.dart';
import 'package:flutter_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(const OverviewPage());
    case driversPageRoute:
      return _getPageRoute(const DriversPage());
    case clientsPageRoute:
      return _getPageRoute(const ClientsPage());
    case authenticationPageRoute:
      return _getPageRoute(const AuthenticationPage());

    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
