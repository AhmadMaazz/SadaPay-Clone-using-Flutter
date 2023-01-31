import 'package:flutter/material.dart';
import 'package:sadapay_clone/widgets/number_button.dart';

class NumPad extends StatelessWidget {
  final double buttonSize;
  final Color buttonColor;
  final Color iconColor;
  final TextEditingController controller;
  final Function delete;
  final Function onSubmit;

  const NumPad({
    super.key,
    this.buttonSize = 75,
    this.buttonColor = const Color.fromARGB(255, 255, 129, 129),
    this.iconColor = Colors.white,
    required this.controller,
    required this.delete,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                  number: 1,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller),
              NumberButton(
                  number: 2,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller),
              NumberButton(
                  number: 3,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                  number: 4,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller),
              NumberButton(
                  number: 5,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller),
              NumberButton(
                  number: 6,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                  number: 7,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller),
              NumberButton(
                  number: 8,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller),
              NumberButton(
                  number: 9,
                  size: buttonSize,
                  color: buttonColor,
                  controller: controller),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                width: 50,
              ),
              NumberButton(
                number: 0,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              IconButton(
                onPressed: () => delete(),
                icon: const Icon(
                  Icons.backspace_outlined,
                  color: Colors.white,
                ),
                iconSize: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
