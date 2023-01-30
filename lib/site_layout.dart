import 'package:flutter/material.dart';
import 'package:flutter_dashboard/helpers/responsive_widget.dart';
import 'package:flutter_dashboard/widgets/large_screen.dart';
import 'package:flutter_dashboard/widgets/medium_screen.dart';
import 'package:flutter_dashboard/widgets/small_screen.dart';
import 'package:flutter_dashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(
        context,
        scaffoldKey,
      ),
      drawer: const Drawer(),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: MediumScreen(),
      ),
    );
  }
}
