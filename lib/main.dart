import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home:MyApp(),
    ),
  );
}
Widget gamecontent(String name,String image){
  return Column(
    children: [
      Image.asset("images/"+image,width: 200,height: 200),
      Text(name,style:TextStyle(fontSize: 20)),
    ],
  );
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("棋類遊戲介紹"),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.blue[100],
      ),
      body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:Column(
            children: [
              Text("取子類:",style:TextStyle(fontSize: 30)),
              Text("吃掉特定棋子獲得勝利",style:TextStyle(fontSize: 20)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    gamecontent("象棋", "chinesechess.png"),
                    SizedBox(width: 20),
                    gamecontent("西洋棋", "chess.png"),
                    SizedBox(width: 20),
                    gamecontent("將棋", "shogi.png"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("到達類:",style:TextStyle(fontSize: 30)),
              Text("將特定棋子移動到特定位置獲得勝利",style:TextStyle(fontSize: 20)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    gamecontent("牆棋", "quoridor.jpg"),
                    SizedBox(width: 20),
                    gamecontent("雙陸棋", 'backgammon.jpg'),
                    SizedBox(width: 20),
                    gamecontent("中國跳棋", 'chinesechecker.png')
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("連線類:",style:TextStyle(fontSize: 30)),
              Text("將棋子連成一線獲得勝利",style:TextStyle(fontSize: 20)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    gamecontent("四子棋","fourInLine.png"),
                    SizedBox(width: 20),
                    gamecontent("五子棋","gomoku.png"),
                    SizedBox(width: 20),
                    gamecontent("六子棋", "connect6.png"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.grey[200],
                  ),
                  Text("廣告廣告廣告廣告"),
                  Icon(Icons.disabled_by_default_outlined, size: 50, color: Colors.blue[200],)
                ],
              )
            ],
          )
        )
    );
  }
}