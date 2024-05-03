import 'package:flutter/material.dart';
import 'package:tyamo/views/auth/forgot_password.dart';
import 'package:tyamo/views/auth/login.dart';
import 'package:tyamo/views/auth/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tyamo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const ForgotPassword(),
    );
  }
}
