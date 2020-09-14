import 'package:flutter/material.dart';
import 'package:rulet_v4/home/home.dart';

class FotografWidget extends StatelessWidget {
  int birinciBolgeDeger;
  int ikinciBolgeDeger;
  int ucuncuBolgeDeger;
  int birinciSiraDeger;
  int ikinciSiraDeger;
  int ucuncuSiraDeger;
  int voisinDeger;
  int orphelinsDeger;
  int tierDeger;

  FotografWidget(
      this.birinciBolgeDeger,
      this.ikinciBolgeDeger,
      this.ucuncuBolgeDeger,
      this.birinciSiraDeger,
      this.ikinciSiraDeger,
      this.ucuncuSiraDeger,
      this.voisinDeger,
      this.orphelinsDeger,
      this.tierDeger);

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
    return Container(
      padding: EdgeInsets.all(25),
      child: Image(
        image: updateImage(),
      ),
    );
  }


  updateImage(){
    if(voisinDeger >= 8){
      return AssetImage('images/v8.png');
    }else if(tierDeger >=10){
      return AssetImage('images/t10.png');
    }else if(orphelinsDeger >= 15){
      return AssetImage('images/o15.png');
    }else if(ikinciBolgeDeger >=3 && birinciSiraDeger >=3 && voisinDeger >=2){
      return AssetImage('images/2b31s3v2.png');
    }else if(ikinciBolgeDeger >=3 && birinciSiraDeger >=3 && tierDeger >= 2){
      return AssetImage('images/2b31s3t2.png');
    }else if(ucuncuBolgeDeger >=3 && birinciSiraDeger >=3){
      return AssetImage('images/3b31s3.png');
    }else if(ikinciBolgeDeger >=3 && birinciSiraDeger >=3){
      return AssetImage('images/2b31s3.png');
    }else if(ikinciBolgeDeger >=3 && voisinDeger >=2){
      return AssetImage('images/2b3v2.png');
    }else if(ikinciBolgeDeger >=3 && tierDeger >=2){
      return AssetImage('images/2b3t2.png');
    }else if(birinciSiraDeger >=3 && voisinDeger>=2){
      return AssetImage('images/1s3v2.png');
    }else if(birinciSiraDeger >=3 && tierDeger >=2){
      return AssetImage('images/1s3t2.png');
    }else if(ucuncuBolgeDeger >=3 && voisinDeger >=2){
      return AssetImage('images/3b3v2.png');
    }else if(ucuncuBolgeDeger >=3 && tierDeger >=2){
      return AssetImage('images/3b3t2.png');
    }else if(birinciSiraDeger >=4){
      return AssetImage('images/1s4.png');
    }else if(ikinciBolgeDeger >=3 && ikinciSiraDeger >=3){
      return AssetImage('images/2b32s3.png');
    }else if(ikinciBolgeDeger >= 3 && ucuncuSiraDeger >=3){
      return AssetImage('images/2b33s3.png');
    }else if(birinciBolgeDeger >=4 && birinciSiraDeger >=4){
      return AssetImage('images/1b41s4.png');
    }else if(birinciBolgeDeger >=4 && ikinciSiraDeger >=4){
      return AssetImage('images/1b42s4.png');
    }else if(birinciBolgeDeger >=3 && ucuncuSiraDeger >=3){
      return AssetImage('images/1b33s3.png');
    }else if(ucuncuBolgeDeger >= 3 && ikinciSiraDeger >= 3){
      return AssetImage('images/3b32s3.png');
    }else if(ucuncuBolgeDeger >= 3 && ucuncuSiraDeger >=3){
      return AssetImage('images/3b33s3.png');
    }else if(birinciBolgeDeger >=4){
      return AssetImage('images/1b4.png');
    }else if(ikinciBolgeDeger >=4){
      return AssetImage('images/2b4.png');
    }else if(ucuncuBolgeDeger >= 4){
      return AssetImage('images/3b4.png');
    }else if(ikinciSiraDeger >=4){
      return AssetImage('images/2s4.png');
    }else if(ucuncuSiraDeger >=4){
      return AssetImage('images/3s4.png');
    }else{
      return AssetImage('images/RuletVektor.png');
    }

  }



}
