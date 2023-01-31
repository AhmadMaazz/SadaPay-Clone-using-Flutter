import 'package:flutter/material.dart';
// import 'package:sadapay_clone/screens/homepage.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../widgets/homepage_item.dart';
import '../widgets/tabwidget.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      panelBuilder: (scrollController) =>
          buildSlidingPanel(scrollController: scrollController),
      body: const HomePageItem(),
      // panel: const Text('this is sliding up panel'),
      // borderRadius: BorderRadius.only(topRight: 20,topLeft: 20),
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      backdropTapClosesPanel: true,
      defaultPanelState: PanelState.OPEN,
      // onPanelClosed: () => const MyHomePage(),
      panelSnapping: false,
      maxHeight: 400,
      minHeight: 40,
    );
  }

  Widget buildSlidingPanel({
    required ScrollController scrollController,
  }) =>
      TabWidget(
        scrollController: scrollController,
      );
}
