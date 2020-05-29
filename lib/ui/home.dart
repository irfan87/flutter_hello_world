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

class ScaffoldExample extends StatelessWidget {
  iconEmailPressed() => debugPrint('Icon Email was tapped');

  iconACPressed() => debugPrint("Icon AC was tapped");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent.shade200,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.ac_unit, color: Colors.white),
            onPressed: iconACPressed,
          ),
          IconButton(
            icon: Icon(
              Icons.email,
              color: Colors.white,
            ),
            onPressed: iconEmailPressed,
          )
        ],
      ),
      body: Center(
        child: Home(),
      ),
    );
  }
}
