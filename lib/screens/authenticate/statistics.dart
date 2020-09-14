import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {




  int birinciBolge;

  Statistics(
      this.birinciBolge,
      this.ikinciBolge,
      this.ucuncuBolge,
      this.birinciSira,
      this.ikinciSira,
      this.ucuncuSira,
      this.voisinDeger,
      this.orphelinsDeger,
      this.tierDeger);

  int ikinciBolge;
  int ucuncuBolge;
  int birinciSira;
  int ikinciSira;
  int ucuncuSira;
  int voisinDeger;
  int orphelinsDeger;
  int tierDeger;




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


