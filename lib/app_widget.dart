import 'package:flutter/material.dart';
import 'package:flutter_keys/global_key/main_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // To check on GlobalKeys, use GlobalKeyScreen()
      // To check on UniqueKeys, use UniqueKeyScreen()
      home: GlobalKeyScreen(),
    );
  }
}
