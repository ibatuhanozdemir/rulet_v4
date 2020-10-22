import 'package:flutter/material.dart';
import 'package:rulet_v4/home/home.dart';
import 'package:rulet_v4/screens/aciklamalar.dart';
import 'package:rulet_v4/screens/explanations.dart';


class ExplanationsSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Before we start / Başlamadan önce"),
        backgroundColor: Colors.green.shade900,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: Colors.green.shade900,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Aciklamalar()));
                    },
                    child: Text("Açıklamalar", style: TextStyle(color: Colors.white),),
                  ),
                  Text("  /  "),
                  RaisedButton(
                    color: Colors.green.shade900,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Explanations()));
                    },
                    child: Text("Explanations", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                      color: Colors.green.shade900,
                    child: Text("Ana Sayfa/Main Page", style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
                    }
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
