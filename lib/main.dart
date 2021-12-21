import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MagicBall());
}

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "magic 8 ball",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ask Me Anything "),
      ),
      body: Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
          },
          child: Image.asset("images/ball$ballNumber.png"),
        ),
      ),
    );
  }
}

