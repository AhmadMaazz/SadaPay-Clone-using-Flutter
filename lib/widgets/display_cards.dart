import 'package:flutter/material.dart';
import 'package:sadapay_clone/screens/card_screen.dart';
import 'package:sadapay_clone/screens/load_moneyscreen.dart';
import 'package:sadapay_clone/screens/send_moneyscreen.dart';

class DisplayCards extends StatelessWidget {
  const DisplayCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CardScreen()),
              );
            },
            child: Container(
              height: 260,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 0, 255, 204),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 17, left: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Current Balance',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, left: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Rs. 525',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, bottom: 10),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Image.asset(
                            'assets/logos/mastercard.png',
                            width: 52.5,
                            height: 52.5,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 12.0,
                          bottom: 10,
                          right: 20,
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Icon(
                            Icons.arrow_forward,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoadMoney(),
                    ),
                  );
                },
                child: Container(
                  height: 125,
                  width: 152.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 0, 174, 255),
                  ),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.arrow_downward,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Load\nMoney',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SendMoney(),
                    ),
                  );
                },
                child: Container(
                  height: 125,
                  width: 152.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 255, 129, 129),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Transform.rotate(
                            angle: 44.75, //set the angle
                            child: const Icon(
                              Icons.arrow_upward,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Send &\nRequest',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
