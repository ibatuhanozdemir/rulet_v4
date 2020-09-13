import 'package:flutter/material.dart';
import 'package:rulet_v4/home/home.dart';

class FotografWidget extends StatefulWidget {
  @override
  _FotografWidgetState createState() => _FotografWidgetState();
}

class _FotografWidgetState extends State<FotografWidget> {
  var resimlerListesi = [
    '1b4',
    '1b33s3',
    '1b41s4',
    '1b42s4',
    '1s3t2',
    '1s3v2',
    '1s4',
    '2b3t2',
    '2b3v2',
    '2b4',
    '2b31s3',
    '2b31s3t2',
    '2b31s3v2',
    '2b32s3',
    '2b33s3',
    '3b3t2',
    '3b3v2',
    '3b4',
    '3b31s3',
    '3b31s3t2',
    '3b31s3v2',
    '3b32s3',
    '3b33s3',
    '3s4',
    'o15',
    'RuletVektor',
    't10',
    'v8'
  ];


  @override
  Widget build(BuildContext context) {
    Home home = Home();
    return Container(
      padding: EdgeInsets.all(25),
      child: Image(
        image: AssetImage('images/${resimlerListesi[5]}.png'),
      ),
    );
  }
}
