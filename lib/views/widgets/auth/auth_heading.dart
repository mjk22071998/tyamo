import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String mainText;
  final String subText;

  const Heading({
    Key? key,
    required this.mainText,
    required this.subText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          mainText,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(subText),
      ],
    );
  }
}
