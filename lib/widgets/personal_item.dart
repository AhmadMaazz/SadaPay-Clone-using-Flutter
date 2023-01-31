import 'package:flutter/material.dart';

class PersonalItem extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subtext;
  const PersonalItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 255, 235, 235),
            ),
            child: icon,
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
                    title,
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
                padding: const EdgeInsets.only(bottom: 10, right: 5, top: 3),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    subtext,
                    style: const TextStyle(
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
    );
  }
}
