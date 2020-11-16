import 'package:flutter/material.dart';
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';
class GridScreen extends StatefulWidget {
  @override
  _GridScreenState createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  bool yourTurn=true;
  List<String> xo=['','','','','','','','',''];
  void _ontap(int index){
    if(yourTurn){
      xo[index]='O';
    } else{
      xo[index]='X';
    }
    yourTurn=!yourTurn;
    _checkWinner();
  }

  void _checkWinner(){

    if(xo[0]== xo[1] && xo[1]==xo[2] && xo[1]!=''){
      _displayWinner(xo[0]);
    }
    if(xo[3]==xo[4] && xo[4]==xo[5] &&xo[4]!=''){
      _displayWinner(xo[3]);
    }
    if(xo[6]==xo[7] && xo[7]==xo[8]  && xo[7]!=''){
      _displayWinner(xo[6]);
    }
    if(xo[0]==xo[3] && xo[3]==xo[6] && xo[3]!=''){
      _displayWinner(xo[0]);
    }
    if(xo[1]==xo[4] && xo[4]==xo[7] && xo[4]!=''){
      _displayWinner(xo[1]);
    }
    if(xo[2]== xo[5] && xo[5]==xo[8] && xo[5]!=''){
      _displayWinner(xo[2]);
    }
    if(xo[0]==xo[4] && xo[4]==xo[8] && xo[4]!=''){
      _displayWinner(xo[0]);
    }
    if(xo[2]==xo[4] && xo[4]==xo[6] && xo[4]!=''){
      _displayWinner(xo[2]);
    }

  }
  void _displayWinner(String s){
    SuccessBgAlertBox

    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 9,
        itemBuilder: (BuildContext context,int index){
          return GestureDetector(
            onTap: (){
              setState(() {
                _ontap(index);
              });
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF322514),),
              ),
              child: Center(child: Text(xo[index],style: TextStyle(fontSize: 30.0),),),
            ),
          );
        });
  }
}
