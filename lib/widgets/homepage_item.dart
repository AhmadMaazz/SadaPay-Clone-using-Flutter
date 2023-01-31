import 'package:flutter/material.dart';

import 'date_total.dart';
import 'display_cards.dart';
import 'transaction_item.dart';

class HomePageItem extends StatelessWidget {
  const HomePageItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 75),
          const DisplayCards(),
          const SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Column(
              children: const [
                DateTotal(date: 'Jan 11', tprice: 1200, p: false),
                TransactionItem(
                  url: 'assets/logos/tc.png',
                  text: 'Jazz Prepaid *9298',
                  time: '8:01 PM',
                  price: 100,
                  pmflag: false,
                  option: 'com',
                ),
                TransactionItem(
                  url: 'assets/logos/ms.png',
                  text: 'Kfc Rawalpindi Pak',
                  time: '2:22 AM',
                  price: 50,
                  pmflag: false,
                  option: 'send',
                ),
                TransactionItem(
                  url: 'assets/logos/mr.png',
                  text: 'RIDA MALIK',
                  time: '12:30 PM',
                  price: 1350,
                  pmflag: true,
                  option: 'rec',
                ),
                DateTotal(date: 'Jan 9', tprice: 3190, p: true),
                TransactionItem(
                  url: 'assets/logos/tc.png',
                  text: 'Kfc Rawalpindi Pak',
                  time: '12:30 PM',
                  price: 1530,
                  pmflag: false,
                  option: 'com',
                ),
                TransactionItem(
                  url: 'assets/logos/tc.png',
                  text: 'Rev- Kfc Rawalpindi',
                  time: '12:28 PM',
                  price: 1530,
                  pmflag: true,
                  option: 'com',
                ),
                TransactionItem(
                  url: 'assets/logos/tc.png',
                  text: 'Kfc Rawalpindi Pak',
                  time: '12:30 PM',
                  price: 1530,
                  pmflag: false,
                  option: 'com',
                ),
                TransactionItem(
                  url: 'assets/logos/ms.png',
                  text: 'FIAZ AHMED',
                  time: '12:30 AM',
                  price: 2460,
                  pmflag: false,
                  option: 'send',
                ),
                TransactionItem(
                  url: 'assets/logos/mr.png',
                  text: 'Danyaal Mahmood',
                  time: '12:26 AM',
                  price: 800,
                  pmflag: true,
                  option: 'rec',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
