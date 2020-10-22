import 'package:flutter/material.dart';
import 'package:rulet_v4/home/home.dart';

class Aciklamalar extends StatefulWidget {
  @override
  _AciklamalarState createState() => _AciklamalarState();
}

class _AciklamalarState extends State<Aciklamalar> {
  var isimler = ['tr0', 'tr1', 'tr2','tr3','tr4'];
  var i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green.shade900,
        title: Text("Açıklamalar"),
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
                      } else if (i <= 4) {
                        i--;
                      }
                      setState(() {});
                    },
                  ),
                  RaisedButton(
                    child: Text(
                      "Tahminler Sayfası",
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
                      if (i <= 3) {
                        i++;
                      }else{
                        return null;
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
