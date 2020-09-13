import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:rulet_v4/home/home.dart';
import 'package:rulet_v4/models/kullanici.dart';
import 'package:rulet_v4/screens/authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final kullaniciProviderReferansi = Provider.of<Kullanici>(context);



    //return either home or authenticate widget

    if(kullaniciProviderReferansi == null){
      return Authenticate();
    }else{
      return Home();
    }
  }
}
