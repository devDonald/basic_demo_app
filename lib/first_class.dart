

import 'package:basic_calculator/calculator_buttons.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text(
            "CALCULATOR APP",
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
                fontWeight: .w800,
                overflow: .visible
            ),
          ),

          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: (){

                  }, icon: Icon(
                Icons.notifications,
                color: Colors.deepPurple,
                size: 25,
              )),
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  padding: .all(20),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.grey[850],
                  child: Text(
                    "0",
                    textAlign: .end,
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: .w300,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    CalcBtn(
                      text: "AC",
                      bgColor: Colors.grey[800],
                    ),
                    CalcBtn(text: "+/-",bgColor: Colors.grey[800]),
                    CalcBtn(text: "%",bgColor: Colors.grey[800]),
                    CalcBtn(text: "/",bgColor: Colors.orange[500]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    CalcBtn(
                      text: "7",
                    ),
                    CalcBtn(text: "8"),
                    CalcBtn(text: "9"),
                    CalcBtn(text: "X",bgColor: Colors.orange[500]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    CalcBtn(
                      text: "4"
                    ),
                    CalcBtn(text: "5"),
                    CalcBtn(text: "6"),
                    CalcBtn(text: "-",bgColor: Colors.orange[500]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    CalcBtn(
                      text: "1",
                    ),
                    CalcBtn(text: "2"),
                    CalcBtn(text: "3"),
                    CalcBtn(text: "+",bgColor: Colors.orange[500]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    CalcBtn(
                      text: "0",
                      width: 205,
                    ),
                    CalcBtn(text: ","),
                    CalcBtn(text: "+",bgColor: Colors.orange[500]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}