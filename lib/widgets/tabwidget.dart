import 'package:flutter/material.dart';
import 'package:sadapay_clone/widgets/personal_item.dart';

class TabWidget extends StatelessWidget {
  final ScrollController scrollController;
  const TabWidget({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      controller: scrollController,
      children: const [ 
        Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Icon(
            Icons.horizontal_rule,
          ),
        ),
        Spacer(),
        Padding(
          // padding: EdgeInsets.all(15.0),
          padding: EdgeInsets.only(
            top: 15,
            left: 10,
            bottom: 15,
          ),
          child: Text(
            'Payments',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        PersonalItem(
          icon: Icon(
            Icons.phone_android_rounded,
            size: 30,
            color: Color.fromARGB(255, 255, 129, 129),
          ),
          title: 'Mobile top up',
          subtext: 'Instantly top up your mobile.',
        ),
        Divider(thickness: 1.5),
        PersonalItem(
          icon: Icon(
            Icons.receipt_rounded,
            size: 30,
            color: Color.fromARGB(255, 255, 129, 129),
          ),
          title: 'Bills and utilities',
          subtext: 'Pay for your utilities.',
        ),
        Divider(
          thickness: 1.5,
        ),
        PersonalItem(
          icon: Icon(
            Icons.card_membership_rounded,
            size: 30,
            color: Color.fromARGB(255, 255, 129, 129),
          ),
          title: 'Money requests',
          subtext: 'Review pending money req.',
        ),
        // PersonalItem(),
        // PersonalItem(),
      ],
    );
  }
}
