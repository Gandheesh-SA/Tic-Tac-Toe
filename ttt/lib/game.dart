import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ttt/constants.dart';
import 'package:ttt/grid.dart';
class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBE1558),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text('Player 1 Move',style: headStyle1,),
              sizedBox,
              Text('Timer',style: headStyle1,),
              sizedBox,
              Expanded(child: GridScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
