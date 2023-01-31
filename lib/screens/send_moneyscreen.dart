import 'package:flutter/material.dart';
import 'package:sadapay_clone/screens/homepage.dart';
import 'package:sadapay_clone/widgets/numpad.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  final TextEditingController _myController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _myController.text = 'Rs. ';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 129, 129),
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
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                        text: 'Current Balance',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: '\nRs. 525',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
          SizedBox(
            height: 70,
            child: Center(
              child: TextField(
                controller: _myController,
                textAlign: TextAlign.center,
                showCursor: false,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
                keyboardType: TextInputType.none,
                decoration: const InputDecoration(border: InputBorder.none),
                enabled: false,
              ),
            ),
          ),
          NumPad(
            controller: _myController,
            delete: () {
              if (_myController.text.length > 3) {
                // check if Rs needed any space, change the `3` based on your need
                _myController.text = _myController.text
                    .substring(0, _myController.text.length - 1);
              }
            },
            onSubmit: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 70),
                    backgroundColor: Colors.black45,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Request',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 70),
                    backgroundColor: Colors.black45,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
