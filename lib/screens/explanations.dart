import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rulet_v4/home/home.dart';

class Explanations extends StatefulWidget {
  @override
  _ExplanationsState createState() => _ExplanationsState();
}

class _ExplanationsState extends State<Explanations> {
  var isimler = ['eng0', 'eng1', 'eng2','eng3'];
  var i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green.shade900,
        title: Text("Explanations"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage('images/${isimler[i]}.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RaisedButton(
                    child:
                        Text("Previous", style: TextStyle(color: Colors.white)),
                    color: Colors.green.shade900,
                    onPressed: () {
                      if (i == 0) {
                        return null;
                      } else if (i <= 3) {
                        i--;
                      }
                      setState(() {});
                    },
                  ),
                  RaisedButton(
                    child: Text(
                      "Predictions",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.green.shade900,
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                  RaisedButton(
                    child: Text("Next", style: TextStyle(color: Colors.white)),
                    color: Colors.green.shade900,
                    onPressed: () {
                      if (i <= 2) {
                        i++;
                      }
                      setState(() {});
                      print(i);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
