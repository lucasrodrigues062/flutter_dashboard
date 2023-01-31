import 'package:flutter/material.dart';
import 'package:flutter_dashboard/constants/controllers.dart';
import 'package:flutter_dashboard/routing/router.dart';
import 'package:flutter_dashboard/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: overViewPageRoute,
      onGenerateRoute: generateRoute,
    );
