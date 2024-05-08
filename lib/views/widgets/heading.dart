import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Heading extends StatelessWidget {
  final String mainText;
  final String subText;
  final Color color;

  const Heading({
    super.key,
    required this.mainText,
    required this.subText,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          mainText,
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.bold, color: color),
        ),
        Visibility(
          visible: subText.isNotEmpty,
          child: Text(
            subText,
            style: TextStyle(color: color),
          ),
        ),
      ],
    );
  }
}
