import "package:flutter/material.dart";

class Home extends StatelessWidget {
  final String myName = 'Irfan';

  inkWellTapAction() {
    debugPrint('Tapped action from Inkwell');
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    "Tap Me, please",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.4,
                    ),
                  ),
                ),
                onTap: inkWellTapAction,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    "Tap Me Again, please",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.4,
                    ),
                  ),
                ),
                onTap: inkWellTapAction,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
          ],
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
      body: Container(
        alignment: Alignment.center,
        child: Home(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(
          content: Text(
            'You have exploded your brain because there is a lot of Flutter stuffs in your head!',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.lime.shade800,
        );

        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text("Tap this button!"),
      ),
    );
  }
}
