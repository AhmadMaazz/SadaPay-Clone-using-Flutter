import 'package:flutter/material.dart';

class DateTotal extends StatelessWidget {
  final String date;
  final int tprice;
  final bool p;
  const DateTotal({
    Key? key,
    required this.date,
    required this.tprice,
    required this.p,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              date,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
            right: 20,
            left: 20,
            top: 30,
          ),
          child: p
              ? Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '- Rs. $tprice',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black45,
                    ),
                  ),
                )
              : Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '+ Rs. $tprice',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black45,
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
