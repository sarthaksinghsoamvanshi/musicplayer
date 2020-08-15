import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/artist.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  Widget appbar() {
    return Row(
      children: [
        InkWell(
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onTap: null),
        Spacer(),
        Text(
          "Music Player",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        Spacer(),
        InkWell(
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onTap: null),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: appbar(),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(" Albums",style:TextStyle(color:Colors.white,fontSize:25),),
                          SizedBox(width:10),
                          CircleAvatar(radius:7,backgroundColor: Colors.white,)
                        ],
                      ),
                      InkWell(child:Icon(Icons.keyboard_arrow_right,color: Colors.white,))
                    ],
                  ),
                ),
                Artists(),
                 Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(" Playlists",style:TextStyle(color:Colors.white,fontSize:25),),
                          SizedBox(width:10),
                          CircleAvatar(radius:7,backgroundColor: Colors.white,)
                        ],
                      ),
                      InkWell(child:Icon(Icons.keyboard_arrow_right,color: Colors.white,))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
