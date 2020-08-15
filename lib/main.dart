import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  Widget appbar()
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: Icon(Icons.menu,color: Colors.white,), onPressed: null),
        Text("Music Player",style: TextStyle(color:Colors.white,fontSize:25),),
        IconButton(icon: Icon(Icons.search,color:Colors.white), onPressed: null)
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                // backgroundBlendMode: BlendMode.difference,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.mirror,
                  colors: [
                    Colors.purple,
                    Colors.blue,
                    Colors.black,
                    Colors.black
                  ],
                ),
              ),
            ),
            ListView(
              children: [
                appbar(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
