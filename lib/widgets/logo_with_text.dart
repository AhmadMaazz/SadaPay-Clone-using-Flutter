import 'package:flutter/material.dart';

class LogoWithText extends StatelessWidget {
  final String imageUrl;
  final String text;
  const LogoWithText({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 120,
      child: Column(
        children: [
          Container(
            height: 60,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(1.5),
              child: Container(
                height: 55,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Image.asset(
                  imageUrl,
                  height: 150,
                  width: 100,
                ),
              ),
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500),
            maxLines: 2,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
