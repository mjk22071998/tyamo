import 'dart:async';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:tyamo/views/widgets/appbar.dart';
import 'package:tyamo/views/widgets/heading.dart';
import 'package:tyamo/views/widgets/textfield.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({super.key});

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  bool isMale = true;

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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Heading(
                mainText: "Profile Setup",
                subText: "Please enter your data",
              ),
              const SizedBox(
                height: 20,
              ),
              CircularProfileAvatar(
                "",
                initialsText: const Text(
                  "+",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.teal,
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: MyTextField(
                  label: "Full Name",
                  obscureText: false,
                  inputType: TextInputType.name,
                  icon: Icons.person,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: MyTextField(
                  label: "Your username",
                  obscureText: false,
                  inputType: TextInputType.text,
                  icon: Icons.alternate_email,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    tooltip: "Male",
                    backgroundColor: isMale ? Colors.teal : Colors.tealAccent,
                    child: Icon(
                      Icons.male,
                      color: isMale ? Colors.tealAccent : Colors.teal,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    tooltip: "Female",
                    backgroundColor: !isMale ? Colors.teal : Colors.tealAccent,
                    child: Icon(
                      Icons.female,
                      color: !isMale ? Colors.tealAccent : Colors.teal,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              RoundedLoadingButton(
                controller: _btnController,
                color: Colors.teal,
                onPressed: () {
                  success();
                },
                child: const Text(
                  "NEXT",
                  style: TextStyle(color: Colors.tealAccent),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
