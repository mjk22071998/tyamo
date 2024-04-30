import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/views/widgets/appbar.dart';
import 'package:tyamo/views/widgets/auth/auth_heading.dart';

class LoginScreen extends StatelessWidget {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  LoginScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Heading(
              mainText: "Sign in to Tyamo",
              subText: "To Connect with your Partner",
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              textAlign: TextAlign.start,
              obscureText: false,
              textInputAction: TextInputAction.none,
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                fillColor: Colors.blueGrey.shade100,
                filled: true,
                prefixIcon: const Icon(
                  Icons.alternate_email,
                ),
                prefixIconColor: MaterialStateColor.resolveWith((states) =>
                    states.contains(MaterialState.focused)
                        ? Colors.teal
                        : Colors.blueGrey.shade400),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              textAlign: TextAlign.start,
              obscureText: true,
              textInputAction: TextInputAction.none,
              autofocus: false,
              keyboardType: TextInputType.text,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                fillColor: Colors.blueGrey.shade100,
                filled: true,
                prefixIcon: const Icon(
                  Icons.password,
                ),
                prefixIconColor: MaterialStateColor.resolveWith((states) =>
                    states.contains(MaterialState.focused)
                        ? Colors.teal
                        : Colors.blueGrey.shade400),
              ),
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
              child: const Text("Login"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
