import 'package:flutter/material.dart';

import 'home.dart';
import 'package:food_tut/screens/main_screen.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purpleAccent),
      title: 'Fooderlich',
      home: const MainScreen(),
    );
  }
}
