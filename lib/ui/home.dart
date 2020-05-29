import "package:flutter/material.dart";

class Home extends StatelessWidget {
  final String myName = 'Irfan';

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: Center(
        child: Text(
          "Hello $myName! Welcome to the Flutter-land!",
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18.2,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
      ),
    );
  }
}
