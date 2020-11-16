import 'package:flutter/material.dart';
import 'package:ttt/constants.dart';
import 'package:ttt/game.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBE1558),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                    Expanded(
                      child: Container(
                        child: Text('x',style: headStyle,),
                      ),
                    ),
                  SizedBox(width: 5.0,),
                  Expanded(
                    child: Container(
                      child: Text('o',style: headStyle2,),
                    ),
                  )
                ],
              ),
              SizedBox(height: 120.0,),
             GestureDetector(
               onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return GameScreen();
                    }));
               },
               child: Container(
                 decoration: BoxDecoration(
                   color: Color(0xFF322514),
                   borderRadius: BorderRadius.all(Radius.circular(30.0))
                 ),

                 width: 300,
                 child: Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Center(child: Text('Start',style: TextStyle(fontSize: 60.0,fontFamily: 'Sniglet',color:Color(0xFFFBCBC9) ),)),
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
