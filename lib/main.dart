import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [Container(
            decoration:BoxDecoration(
              gradient:LinearGradient(colors: [Colors.purple,Colors.blue,Colors.black])
            )
          )],
        ),
      ),
    );
  }
}
