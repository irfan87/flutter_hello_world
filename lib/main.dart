import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  final String myName = 'Irfan';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello $myName! Welcome to the Flutter-land!",
        textDirection: TextDirection.ltr,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
