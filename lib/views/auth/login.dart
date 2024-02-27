import 'package:flutter/material.dart';
import 'package:tyamo/views/widgets/appbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context),
    );
  }
}
