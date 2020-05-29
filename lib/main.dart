import 'package:flutter/material.dart';
import 'package:hello_flutter/ui/home.dart';

void main() {
  // runApp(Home());
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ScaffoldExample());
  }
}
