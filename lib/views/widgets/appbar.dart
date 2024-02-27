import 'package:flutter/material.dart';

AppBar getAppBar({required BuildContext context, title = "Tyamo"}) {
  return AppBar(
    backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    title: Text(title),
    centerTitle: true,
  );
}
