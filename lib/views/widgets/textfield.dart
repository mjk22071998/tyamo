import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final bool obscureText;
  final TextInputType inputType;
  final IconData icon;
  final String label;

  const MyTextField({
    Key? key,
    required this.label,
    required this.obscureText,
    required this.inputType,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      obscureText: obscureText,
      textInputAction: TextInputAction.none,
      autofocus: false,
      keyboardType: inputType,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        labelText: label,
        fillColor: Colors.blueGrey.shade100,
        filled: true,
        prefixIcon: Icon(icon),
        prefixIconColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.focused)
                ? Colors.teal
                : Colors.blueGrey.shade400),
      ),
    );
  }
}
