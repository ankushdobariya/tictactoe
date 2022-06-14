import 'package:flutter/material.dart';
import 'package:tictactoe/datasize.dart';

void main() {
  runApp(MaterialApp(home: tictactoe()));
}

class tictactoe extends StatefulWidget {
  @override
  _tictactoeState createState() => _tictactoeState();
}

class _tictactoeState extends State<tictactoe> {
  String s1 = "",
      s2 = "",
      s3 = "",
      s4 = "",
      s5 = "",
      s6 = "",
      s7 = "",
      s8 = "",
      s9 = "",
      p = "";
  int t = 0, o = 0, x = 0;
  String turn = "0", win = "";

  resetgame()
  {
        setState(() {

              s1 = "";
              s2 = "";
              s3 = "";
              s4 = "";
              s5 = "";
              s6 = "";
              s7 = "";
              s8 = "";
              s9 = "";
              p = "";
              t = 0; o = 0; x = 0;
              turn = "0"; win = "";

        });
  }

  Wincheck() {
    setState(() {
      if ((s1 == "0" && s2 == "0" && s3 == "0") ||
          (s1 == "0" && s4 == "0" && s7 == "0") ||
          (s1 == "0" && s5 == "0" && s9 == "0") ||
          (s2 == "0" && s5 == "0" && s8 == "0") ||
          (s3 == "0" && s6 == "0" && s9 == "0") ||
          (s3 == "0" && s5 == "0" && s7 == "0") ||
          (s4 == "0" && s5 == "0" && s6 == "0") ||
          (s7 == "0" && s8 == "0" && s9 == "0")) {
        win = "o is win";
      }
      if ((s1 == "x" && s2 == "x" && s3 == "x") ||
          (s1 == "x" && s4 == "x" && s7 == "x") ||
          (s1 == "x" && s5 == "x" && s9 == "x") ||
          (s2 == "x" && s5 == "x" && s8 == "x") ||
          (s3 == "x" && s6 == "x" && s9 == "x") ||
          (s3 == "x" && s5 == "x" && s7 == "x") ||
          (s4 == "x" && s5 == "x" && s6 == "x") ||
          (s7 == "x" && s8 == "x" && s9 == "x")) {
        win = "x is win";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    datasize(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("tictactoe"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: datasize.width,
            height: datasize.height! * 0.15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("0\n$o"),
                Text("x\n$x"),
                Text("$turn turn"),
              ],
            ),
          ),
          Container(
            width: datasize.width,
            height: datasize.width,
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        width: (datasize.width! - 20) / 3,
                        height: (datasize.width! - 20) / 3,
                        color: Colors.grey,
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(s1),
                      ),
                      onTap: s1 == ""
                          ? () {
                              setState(() {
                                if (t % 2 == 0) {
                                  s1 = "0";
                                  o++;
                                  turn = "x";
                                } else {
                                  s1 = "x";
                                  x++;
                                  turn = "o";
                                }
                                t++;
                                Wincheck();
                              });
                            }
                          : null,
                    ),
                    InkWell(
                      child: Container(
                        width: (datasize.width! - 20) / 3,
                        height: (datasize.width! - 20) / 3,
                        color: Colors.grey,
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        alignment: Alignment.center,
                        child: Text(s2),
                      ),
                      onTap: s2 == ""
                          ? () {
                              setState(() {
                                if (t % 2 == 0) {
                                  s2 = "0";
                                  o++;
                                  turn = "x";
                                } else {
                                  s2 = "x";
                                  x++;
                                  turn = "o";
                                }
                                t++;
                                Wincheck();
                              });
                            }
                          : null,
                    ),
                    InkWell(
                      child: Container(
                        width: (datasize.width! - 20) / 3,
                        height: (datasize.width! - 20) / 3,
                        color: Colors.grey,
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(s3),
                      ),
                      onTap: s3 == ""
                          ? () {
                              setState(() {
                                if (t % 2 == 0) {
                                  s3 = "0";
                                  o++;
                                  turn = "x";
                                } else {
                                  s3 = "x";
                                  x++;
                                  turn = "o";
                                }
                                t++;
                                Wincheck();
                              });
                            }
                          : null,
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        width: (datasize.width! - 20) / 3,
                        height: (datasize.width! - 20) / 3,
                        color: Colors.grey,
                        margin: EdgeInsets.only(left: 5, right: 5),
                        alignment: Alignment.center,
                        child: Text(s4),
                      ),
                      onTap: s4 == ""
                          ? () {
                              setState(() {
                                if (t % 2 == 0) {
                                  s4 = "0";
                                  o++;
                                  turn = "x";
                                } else {
                                  s4 = "x";
                                  x++;
                                  turn = "o";
                                }
                                t++;
                                Wincheck();
                              });
                            }
                          : null,
                    ),
                    InkWell(
                      child: Container(
                        width: (datasize.width! - 20) / 3,
                        height: (datasize.width! - 20) / 3,
                        color: Colors.grey,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        alignment: Alignment.center,
                        child: Text(s5),
                      ),
                      onTap: s5 == ""
                          ? () {
                              setState(() {
                                if (t % 2 == 0) {
                                  s5 = "0";
                                  o++;
                                  turn = "x";
                                } else {
                                  s5 = "x";
                                  x++;
                                  turn = "o";
                                }
                                t++;
                                Wincheck();
                              });
                            }
                          : null,
                    ),
                    InkWell(
                      child: Container(
                        width: (datasize.width! - 20) / 3,
                        height: (datasize.width! - 20) / 3,
                        color: Colors.grey,
                        margin: EdgeInsets.only(right: 5, left: 5),
                        alignment: Alignment.center,
                        child: Text(s6),
                      ),
                      onTap: s6 == ""
                          ? () {
                              setState(() {
                                if (t % 2 == 0) {
                                  s6 = "0";
                                  o++;
                                  turn = "x";
                                } else {
                                  s6 = "x";
                                  x++;
                                  turn = "o";
                                }
                                t++;
                                Wincheck();
                              });
                            }
                          : null,
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        width: (datasize.width! - 20) / 3,
                        height: (datasize.width! - 20) / 3,
                        color: Colors.grey,
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(s7),
                      ),
                      onTap: s7 == ""
                          ? () {
                              setState(() {
                                if (t % 2 == 0) {
                                  s7 = "0";
                                  o++;
                                  turn = "x";
                                } else {
                                  s7 = "x";
                                  x++;
                                  turn = "o";
                                }
                                t++;
                                Wincheck();
                              });
                            }
                          : null,
                    ),
                    InkWell(
                      child: Container(
                        width: (datasize.width! - 20) / 3,
                        height: (datasize.width! - 20) / 3,
                        color: Colors.grey,
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        alignment: Alignment.center,
                        child: Text(s8),
                      ),
                      onTap: s8 == ""
                          ? () {
                              setState(() {
                                if (t % 2 == 0) {
                                  s8 = "0";
                                  o++;
                                  turn = "x";
                                } else {
                                  s8 = "x";
                                  x++;
                                  turn = "o";
                                }
                                t++;
                                Wincheck();
                              });
                            }
                          : null,
                    ),
                    InkWell(
                      child: Container(
                        width: (datasize.width! - 20) / 3,
                        height: (datasize.width! - 20) / 3,
                        color: Colors.grey,
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(s9),
                      ),
                      onTap: s9 == ""
                          ? () {
                              setState(() {
                                if (t % 2 == 0) {
                                  s9 = "0";
                                  o++;
                                  turn = "x";
                                } else {
                                  s9 = "x";
                                  x++;
                                  turn = "o";
                                }
                                t++;
                                Wincheck();
                              });
                            }
                          : null,
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(win),
              InkWell(

                child: Icon(Icons.repeat),
                onTap: () {
                  resetgame();
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
