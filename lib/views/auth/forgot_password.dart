import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/views/widgets/appbar.dart';
import 'package:tyamo/views/widgets/heading.dart';
import 'package:tyamo/views/widgets/textfield.dart';

class ForgotPassword extends StatelessWidget {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  ForgotPassword({super.key});

  void success() {
    Timer(const Duration(seconds: 3), () {
      _btnController.success();
      reset();
    });
  }

  void reset() {
    Timer(const Duration(seconds: 3), () {
      _btnController.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context),
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.only(top: 40),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Heading(mainText: "Forgot your password?", subText: ""),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 250,
                width: 250,
                child: Image.asset(
                  "assets/images/fg_password.jpg",
                  filterQuality: FilterQuality.high,
                ),
              ),
              const Text(
                  "To request a new one please enter your email address below, A password reset link will be sent to the email"),
              const SizedBox(
                height: 20,
              ),
              const MyTextField(
                label: "Email",
                obscureText: false,
                inputType: TextInputType.emailAddress,
                icon: Icons.alternate_email,
              ),
              const SizedBox(
                height: 20,
              ),
              RoundedLoadingButton(
                controller: _btnController,
                color: Colors.teal,
                onPressed: () {
                  success();
                },
                child: const Text(
                  "SEND",
                  style: TextStyle(color: Colors.tealAccent),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
