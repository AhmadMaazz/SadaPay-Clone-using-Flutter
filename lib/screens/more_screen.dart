import 'package:flutter/material.dart';

import '../widgets/logo_with_text.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 75),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 15,
              ),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color.fromARGB(255, 224, 255, 249),
                    // backgroundColor: Color.fromARGB(255, 0, 255, 204),
                    child: Icon(
                      Icons.person_rounded,
                      color: Color.fromARGB(255, 0, 255, 204),
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Ahmad Maaz',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Account limits',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                children: const [
                  Text(
                    'Incoming',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Rs. 191,490 left',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 129, 129),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
              child: Container(
                height: 8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 8,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 255, 129, 129),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20, top: 14),
              child: Text(
                'Your Rs. 200k monthly limit resets on the 1st of next month',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                ),
                maxLines: 2,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 20),
              child: Divider(
                thickness: 2,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Learn more',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    LogoWithText(
                      imageUrl: 'assets/logos/sadapay.png',
                      text: 'Welcome To \nSadaPay',
                    ),
                    LogoWithText(
                      imageUrl: 'assets/logos/greencard.png',
                      text: 'Order Your \nCard',
                    ),
                    LogoWithText(
                      imageUrl: 'assets/logos/virtualcard.png',
                      text: 'Virtual Card',
                    ),
                    LogoWithText(
                      imageUrl: 'assets/logos/lock.png',
                      text: 'Keeping Your\nAccount Seq...',
                    ),
                    LogoWithText(
                      imageUrl: 'assets/logos/hazaar.png',
                      text: 'Load Money',
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 20),
              child: Divider(
                thickness: 2,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Share with friends',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Row(
                children: const [
                  Icon(
                    Icons.shortcut_outlined,
                    color: Color.fromARGB(255, 255, 129, 129),
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Invite Friends to SadaPay',
                      style: TextStyle(
                        fontSize: 22,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 22, bottom: 20),
              child: Divider(
                thickness: 2,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Call us',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Row(
                children: const [
                  Icon(
                    Icons.call_outlined,
                    color: Color.fromARGB(255, 255, 129, 129),
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      '0800-1-SADA',
                      style: TextStyle(
                        fontSize: 22,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 22, bottom: 20),
              child: Divider(
                thickness: 2,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
              child: Row(
                children: const [
                  Icon(
                    Icons.speaker_notes_outlined,
                    color: Color.fromARGB(255, 255, 129, 129),
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Get help',
                      style: TextStyle(
                        fontSize: 22,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
              child: Row(
                children: const [
                  Icon(
                    Icons.verified_user_outlined,
                    color: Color.fromARGB(255, 255, 129, 129),
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Privacy policy',
                      style: TextStyle(
                        fontSize: 22,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
              child: Row(
                children: const [
                  Icon(
                    Icons.description_outlined,
                    color: Color.fromARGB(255, 255, 129, 129),
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Terms & conditions',
                      style: TextStyle(
                        fontSize: 22,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
              child: Row(
                children: const [
                  Icon(
                    Icons.description_outlined,
                    color: Color.fromARGB(255, 255, 129, 129),
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Schedule of charges',
                      style: TextStyle(
                        fontSize: 22,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 22, bottom: 20),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 15),
              child: Row(
                children: const [
                  Icon(
                    Icons.logout_outlined,
                    color: Color.fromARGB(255, 255, 129, 129),
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Log out',
                      style: TextStyle(
                        fontSize: 22,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
