import 'package:flutter/material.dart';
import 'package:tyamo/views/widgets/heading.dart';

class FriendInvitation extends StatelessWidget {
  const FriendInvitation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Tyamo"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.teal,
            child: const Heading(
              mainText: "Find your Friend",
              subText: "",
              color: Colors.white,
            ),
          ),
          
        ],
      ),
    );
  }
}
