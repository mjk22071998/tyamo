import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/views/widgets/appbar.dart';
import 'package:tyamo/views/widgets/heading.dart';
import 'package:tyamo/views/widgets/textfield.dart';

class Registration extends StatelessWidget {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  Registration({super.key});

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Heading(
                  mainText: "Sign up to Tyamo",
                  subText: "To Connect with your Partner",
                ),
                const SizedBox(
                  height: 40,
                ),
                const MyTextField(
                  label: "Name",
                  obscureText: false,
                  inputType: TextInputType.text,
                  icon: Icons.person,
                ),
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
                const MyTextField(
                  label: "Password",
                  obscureText: true,
                  inputType: TextInputType.text,
                  icon: Icons.password,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MyTextField(
                  label: "Confirm Password",
                  obscureText: true,
                  inputType: TextInputType.text,
                  icon: Icons.lock_reset,
                ),
                const SizedBox(
                  height: 20,
                ),
                RoundedLoadingButton(
                  controller: _btnController,
                  color: Colors.tealAccent,
                  onPressed: () {
                    success();
                  },
                  child: const Text("Sign Up"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    child: const Text(
                      "By signing up you are agreeing to terms and conditions",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: "Already registered?  ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "Sign In",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
