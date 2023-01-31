import 'package:flutter/material.dart';

class ContainerHeading extends StatefulWidget {
  final String title;
  final String desc;
  final String number;

  const ContainerHeading(
      {super.key,
      required this.title,
      required this.desc,
      required this.number});

  @override
  State<ContainerHeading> createState() => _ContainerHeadingState();
}

class _ContainerHeadingState extends State<ContainerHeading> {
  final snackBar = SnackBar(
    width: 250,
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
          width: 3,
        ),
        Text(
          'Account details copied',
          style: TextStyle(fontSize: 15),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: Container(
            height: 135,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black45, width: 0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.desc,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black45,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.number,
                    style: const TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.grey[200]),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.file_copy,
                          color: Color.fromARGB(255, 255, 129, 129),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Copy',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 129, 129),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
