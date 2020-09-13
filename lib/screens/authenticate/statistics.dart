import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rulet_v4/home/home.dart';

class Statistics extends StatefulWidget{
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {

  var voisin = [25,2,21,4,19,15,32,0,26,3,35,12,28,7,29,18,22];
  var orphelins = [9,31,14,20,1,17,34,6];
  var tier = [33,16,24,5,10,23,8,30,11,36,13,27];
  var birinciBolge = 0;
  var ikinciBolge = 0;
  var ucuncuBolge = 0;
  var birinciSira = 0;
  var ikinciSira =0;
  var ucuncuSira =0;
  var voisinDeger =0;
  var orphelinsDeger = 0;
  var tierDeger = 0;


  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text("1-12"),
              SizedBox(width: 70,),
              Text("13-24"),
              SizedBox(width: 70,),
              Text("25-36"),
            ],
          ),
          Row(
            children: [
              Text(birinciBolge.toString()),
              SizedBox(width: 100,),
              Text(ikinciBolge.toString()),
              SizedBox(width: 100,),
              Text(ucuncuBolge.toString()),
            ],
          ),
          Divider(height: 5,),
          Row(
            children: [
              Text("1-4-7"),
              SizedBox(width: 70,),
              Text("2-5-8"),
              SizedBox(width: 70,),
              Text("3-6-9"),
            ],
          ),
          Row(
            children: [
              Text(birinciSira.toString()),
              SizedBox(width: 100,),
              Text(ikinciSira.toString()),
              SizedBox(width: 100,),
              Text(ucuncuSira.toString()),
            ],
          ),
          Divider(height: 5,),
          Row(
            children: [
              Text("Voisin"),
              SizedBox(width: 70,),
              Text("Tier"),
              SizedBox(width: 70,),
              Text("Orphelins"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(voisinDeger.toString()),
              SizedBox(width: 100,),
              Text(tierDeger.toString()),
              SizedBox(width: 100,),
              Text(orphelinsDeger.toString()),
            ],
          ),
        ],
      ),
    );
  }



}
