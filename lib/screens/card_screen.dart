import 'package:flutter/material.dart';
import 'package:sadapay_clone/screens/homepage.dart';
import 'package:sadapay_clone/widgets/physical_card_item.dart';
import 'package:sadapay_clone/widgets/virtual_card_item.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  bool toggle = true;

  void toggleSwitch(int index) {
    if (index == 0) {
      setState(() {
        toggle = true;
      });
    } else if (index == 1) {
      setState(() {
        toggle = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 75),
          SizedBox(
            width: double.infinity,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                Container(
                  width: 295,
                  alignment: Alignment.center,
                  child: const Text(
                    'My Cards',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 365,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[300],
            ),
            child: ToggleSwitch(
              minHeight: 30,
              minWidth: 180.0,
              cornerRadius: 20.0,
              activeBgColors: const [
                [Colors.white],
                [Colors.white]
              ],
              activeFgColor: Colors.black,
              inactiveBgColor: Colors.grey[300],
              inactiveFgColor: Colors.black54,
              initialLabelIndex: toggle ? 0 : 1,

              // changeOnTap: true,
              // animate: true,
              totalSwitches: 2,
              labels: const ['Virtual', 'Physical'],
              radiusStyle: true,
              onToggle: (index) {
                toggleSwitch(index!);
              },
            ),
          ),
          // const SizedBox(
          //   height: 30,
          // ),
          toggle ? const VirtualCard() : const PhysicalCard(),
        ],
      ),
    );
  }
}
