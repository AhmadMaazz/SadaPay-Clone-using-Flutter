import 'package:flutter/material.dart';
import 'package:sadapay_clone/screens/homepage.dart';
import 'package:sadapay_clone/widgets/container_with_heading.dart';

class LoadMoney extends StatelessWidget {
  const LoadMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 75),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
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
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20),
            child: Text(
              'Load money',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Rs. 190,290',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 129, 129),
                    ),
                  ),
                  TextSpan(
                    text: ' incoming limit left this month',
                    style: TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          const ContainerHeading(
            title: 'Recieve local transfers',
            desc: 'My SadaPay account number',
            number: '03090078601',
          ),
          const SizedBox(height: 30),
          const ContainerHeading(
            title: 'Receive international transfers',
            desc: 'My SadaPay IBAN number',
            number: 'PK92 SADA 0000 0101 2212 4148',
          )
        ],
      ),
    );
  }
}
