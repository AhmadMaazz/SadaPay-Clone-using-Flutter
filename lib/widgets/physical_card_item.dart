import 'package:flutter/material.dart';
import 'package:sadapay_clone/widgets/phy_hidedata.dart';
import 'package:sadapay_clone/widgets/phy_showdata.dart';

class PhysicalCard extends StatefulWidget {
  const PhysicalCard({super.key});

  @override
  State<PhysicalCard> createState() => _PhysicalCardState();
}

class _PhysicalCardState extends State<PhysicalCard> {
  bool choice = false;
  bool switchs = false;

  final snackBar = SnackBar(
    width: 200,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    behavior: SnackBarBehavior.floating,
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.done,
          color: Colors.white,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Card details copied',
          style: TextStyle(fontSize: 15),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: ListView(
          padding: EdgeInsets.zero,
          // itemExtent: MediaQuery.of(context).size.height,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 0, 255, 204),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(-5, -5),
                          blurRadius: 10,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ],
                    ),
                    width: 250,
                    height: 400,
                    // height: MediaQuery.of(context).size.height * 0.8,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          choice ? const PhyShowData() : const PhyHideData(),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(95, 50),
                                    backgroundColor: Colors.black45,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      choice ? choice = false : choice = true;
                                    });
                                  },
                                  child: const Text(
                                    'View',
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
                                    fixedSize: const Size(95, 50),
                                    backgroundColor: Colors.black45,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  onPressed: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                  child: const Text(
                                    'Copy',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.ac_unit,
                          color: Color.fromARGB(255, 255, 129, 129),
                          size: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 80,
                          width: 200,
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Freeze card',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),

                              // Spacer(),
                              // const SizedBox(height: 7),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, top: 3),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Lock this card temporarily',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Switch(
                          activeColor: const Color.fromARGB(255, 255, 129, 129),
                          value: switchs,
                          onChanged: (value) {
                            setState(() {
                              switchs ? switchs = false : switchs = true;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.local_police_outlined,
                          color: Color.fromARGB(255, 255, 129, 129),
                          size: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 80,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Change debit card PIN',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),

                              // Spacer(),
                              // const SizedBox(height: 7),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, top: 3),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Update debit card PIN',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.credit_card,
                          color: Color.fromARGB(255, 255, 129, 129),
                          size: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 80,
                          width: MediaQuery.of(context).size.width * 0.65,
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Report an issue with your card',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),

                              // Spacer(),
                              // const SizedBox(height: 7),
                              Padding(
                                padding: EdgeInsets.only(top: 3),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    maxLines: 2,
                                    'Card is lost, stolen, damaged\nor compromised',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
