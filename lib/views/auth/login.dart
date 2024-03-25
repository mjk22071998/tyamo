import 'package:flutter/material.dart';
import 'package:tyamo/views/widgets/appbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text("Sign in to Tyamo"),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    "assets/images/ic_launcher.png",
                    filterQuality: FilterQuality.high,
                  ),
                )
              ],
            ),
            const Text("To connect with\nyour partner"),
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
                prefixIcon: Icon(
                  Icons.alternate_email,
                ),
                prefixIconColor: MaterialStateColor.resolveWith((states) =>
                    states.contains(MaterialState.focused)
                        ? Colors.teal
                        : Colors.blueGrey.shade400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
