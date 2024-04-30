import 'package:flutter/material.dart';
import 'package:tyamo/views/widgets/appbar.dart';
import 'package:tyamo/views/widgets/auth/auth_heading.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ListView(
            children: [
              Heading(mainText: "Sign Up to Tyamo", subText: "To connect with your partner")
            ],
          ),
        ),
      ),
    );
  }
}