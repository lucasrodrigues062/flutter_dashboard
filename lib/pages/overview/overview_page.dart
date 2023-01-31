import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/custom_text.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(text: "Overview"),
    );
  }
}
