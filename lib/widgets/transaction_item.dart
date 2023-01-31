import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String url;
  final String text;
  final String time;
  final int price;
  final bool pmflag;
  final String option;

  const TransactionItem({
    required this.url,
    required this.text,
    required this.time,
    required this.price,
    required this.pmflag,
    super.key,
    required this.option,
  });
  // const TransactionItem({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        option == 'send'
            ? Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 255, 235, 235),
                  ),
                  child: Image.asset(
                    url,
                  ),
                ),
              )
            : option == 'rec'
                ? Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 224, 255, 249),
                      ),
                      child: Image.asset(
                        url,
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[50],
                      ),
                      child: Image.asset(url),
                    ),
                  ),
        SizedBox(
          height: 80,
          width: 200,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // Spacer(),
              // const SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 5, top: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    time,
                    style: const TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 15),
          // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: pmflag
              ? Text(
                  '+ Rs. $price',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                    color: Color.fromARGB(255, 0, 255, 204),
                  ),
                )
              : Text(
                  '- Rs. $price',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
        ),
      ],
    );
  }
}
