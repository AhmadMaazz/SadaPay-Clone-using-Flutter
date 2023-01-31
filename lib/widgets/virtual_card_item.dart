import 'package:flutter/material.dart';
import 'package:sadapay_clone/widgets/vir_hidedata.dart';
import 'package:sadapay_clone/widgets/vir_showdata.dart';

class VirtualCard extends StatefulWidget {
  const VirtualCard({super.key});

  @override
  State<VirtualCard> createState() => _VirtualCardState();
}

class _VirtualCardState extends State<VirtualCard> {
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[100],
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
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  choice ? const VirShowData() : const VirHideData(),
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
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
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
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    // Spacer(),
                    // const SizedBox(height: 7),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, right: 5, top: 3),
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
        )
      ],
    );
  }
}
