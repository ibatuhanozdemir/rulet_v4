import 'package:flutter/material.dart';

import 'package:rulet_v4/screens/authenticate/statistics.dart';
import 'package:rulet_v4/screens/fotograf_widget.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isOn = true;
  var gelen = "";
  List gelenlerListesi = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  List voisin = [25, 2, 21, 4, 19, 15, 32, 0, 26, 3, 35, 12, 28, 7, 29, 18, 22];
  var orphelins = [9, 31, 14, 20, 1, 17, 34, 6];
  var tier = [33, 16, 24, 5, 10, 23, 8, 30, 11, 36, 13, 27];
  var birinciBolgeDeger = 0;
  var ikinciBolgeDeger = 0;
  var ucuncuBolgeDeger = 0;
  var birinciSiraDeger = 0;
  var ikinciSiraDeger = 0;
  var ucuncuSiraDeger = 0;
  var voisinDeger = 0;
  var orphelinsDeger = 0;
  var tierDeger = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text(
          ("${isOn ? "Gelmesi beklenen sayılar" : "Hangi bölge kaç eldir gelmedi"}"),
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        actions: [
          Switch(
            value: isOn,
            onChanged: (val) {
              isOn = val;
              setState(() {
                toggle(val);
              });
            },
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green.shade900,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Son gelenler",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(gelenlerListesi[gelenlerListesi.length - 1],
                              style: TextStyle(color: Colors.white)),
                          Text(gelenlerListesi[gelenlerListesi.length - 2],
                              style: TextStyle(color: Colors.white)),
                          Text(gelenlerListesi[gelenlerListesi.length - 3],
                              style: TextStyle(color: Colors.white)),
                          Text(gelenlerListesi[gelenlerListesi.length - 4],
                              style: TextStyle(color: Colors.white)),
                          Text(gelenlerListesi[gelenlerListesi.length - 5],
                              style: TextStyle(color: Colors.white)),
                          Text(gelenlerListesi[gelenlerListesi.length - 6],
                              style: TextStyle(color: Colors.white)),
                          Text(gelenlerListesi[gelenlerListesi.length - 7],
                              style: TextStyle(color: Colors.white)),
                          Text(gelenlerListesi[gelenlerListesi.length - 8],
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: isOn
                            ? FotografWidget(birinciBolgeDeger,
                            ikinciBolgeDeger,
                            ucuncuBolgeDeger,
                            birinciSiraDeger,
                            ikinciSiraDeger,
                            ucuncuSiraDeger,
                            voisinDeger,
                            orphelinsDeger,
                            tierDeger)
                            : Statistics(
                                birinciBolgeDeger,
                                ikinciBolgeDeger,
                                ucuncuBolgeDeger,
                                birinciSiraDeger,
                                ikinciSiraDeger,
                                ucuncuSiraDeger,
                                voisinDeger,
                                orphelinsDeger,
                                tierDeger)),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      child: Text(
                        "Tabloları sıfırla",
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        denemeMethod();
                      },
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Center(
                        child: Text(
                          gelen,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.shade900,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Text("1"),
                        onPressed: () {
                          if (gelen == "0") {
                            return null;
                          } else if (gelen.length >= 0 && gelen.length <= 1) {
                            gelen = gelen + "1";
                          } else {
                            return null;
                          }
                          setState(() {
                            gelen;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Text("2"),
                        onPressed: () {
                          if (gelen == "0") {
                            return null;
                          } else if (gelen.length >= 0 && gelen.length <= 1) {
                            gelen = gelen + "2";
                          } else {
                            return null;
                          }
                          setState(() {
                            gelen;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Text("3"),
                        onPressed: () {
                          if (gelen == "0") {
                            return null;
                          } else if (gelen.length >= 0 && gelen.length <= 1) {
                            gelen = gelen + "3";
                          } else {
                            return null;
                          }
                          setState(() {
                            gelen;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Text("4"),
                        onPressed: () {
                          if (gelen == "0") {
                            return null;
                          } else if (gelen.length >= 0 && gelen.length <= 1) {
                            gelen = gelen + "4";
                          } else {
                            return null;
                          }
                          setState(() {
                            gelen;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Text("5"),
                        onPressed: () {
                          if (gelen == "0") {
                            return null;
                          } else if (gelen.length >= 0 && gelen.length <= 1) {
                            gelen = gelen + "5";
                          } else {
                            return null;
                          }
                          setState(() {
                            gelen;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Text(
                          "Del",
                          textScaleFactor: 0.8,
                        ),
                        onPressed: () {
                          gelen = "";
                          setState(() {
                            gelen;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                  ],
                )),
            SizedBox(
              height: 3,
            ),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Text("6"),
                        onPressed: () {
                          if (gelen == "0") {
                            return null;
                          } else if (gelen.length >= 0 && gelen.length <= 1) {
                            gelen = gelen + "6";
                          } else {
                            return null;
                          }
                          setState(() {
                            gelen;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Text("7"),
                        onPressed: () {
                          if (gelen == "0") {
                            return null;
                          } else if (gelen.length >= 0 && gelen.length <= 1) {
                            gelen = gelen + "7";
                          } else {
                            return null;
                          }
                          setState(() {
                            gelen;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Text("8"),
                        onPressed: () {
                          if (gelen == "0") {
                            return null;
                          } else if (gelen.length >= 0 && gelen.length <= 1) {
                            gelen = gelen + "8";
                          } else {
                            return null;
                          }
                          setState(() {
                            gelen;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Text("9"),
                        onPressed: () {
                          if (gelen == "0") {
                            return null;
                          } else if (gelen.length >= 0 && gelen.length <= 1) {
                            gelen = gelen + "9";
                          } else {
                            return null;
                          }
                          setState(() {
                            gelen;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Text("0"),
                        onPressed: () {
                          if (gelen.length >= 0 && gelen.length <= 1) {
                            gelen = gelen + "0";
                          } else {
                            return null;
                          }
                          setState(() {
                            gelen;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.keyboard_return,
                              size: 15,
                            ),
                          ],
                        ),
                        onPressed: () {
                          var intGelen = int.tryParse(gelen);
                          if (gelen == "") {
                            return null;
                          } else if (intGelen > 36) {
                            gelen = "";
                          } else {
                            gelenlerListesi.add(gelen);
                            print(gelenlerListesi);
                            updateStatistics();
                            gelen = "";
                          }

                          setState(() {
                            gelen;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  void toggle(bool parametre) {
    parametre != parametre;
  }

  updateStatistics() {
    var intGelen = int.tryParse(gelenlerListesi[gelenlerListesi.length - 1]);

    if (intGelen >= 1 && intGelen < 13) {
      birinciBolgeDeger = 0;
    } else {
      birinciBolgeDeger++;
    }

    if (intGelen >= 13 && intGelen <= 24) {
      ikinciBolgeDeger = 0;
    } else {
      ikinciBolgeDeger++;
    }
    if (intGelen > 24 && intGelen <= 36) {
      ucuncuBolgeDeger = 0;
    } else {
      ucuncuBolgeDeger++;
    }
    if (intGelen % 3 == 1) {
      birinciSiraDeger = 0;
    } else {
      birinciSiraDeger++;
    }

    if (intGelen % 3 == 2) {
      ikinciSiraDeger = 0;
    } else {
      ikinciSiraDeger++;
    }

    if (intGelen == 0) {
      ucuncuSiraDeger++;
    } else if (intGelen % 3 == 0) {
      ucuncuSiraDeger = 0;
    } else {
      ucuncuSiraDeger++;
    }

    voisin.contains(intGelen) ? voisinDeger = 0 : voisinDeger++;
    tier.contains(intGelen) ? tierDeger = 0 : tierDeger++;
    orphelins.contains(intGelen) ? orphelinsDeger = 0 : orphelinsDeger++;
  }

  deleteStatistics(){
    if (gelenlerListesi.length > 8) {
      setState(() {
        gelenlerListesi.removeLast();
      });
      birinciBolgeDeger = 0;
      ikinciBolgeDeger = 0;
      ucuncuBolgeDeger = 0;
      birinciSiraDeger = 0;
      ikinciSiraDeger = 0;
      ucuncuSiraDeger = 0;
      voisinDeger = 0;
      orphelinsDeger = 0;
      tierDeger = 0;
      for(var i =8; i<gelenlerListesi.length-1;){
        gelen = gelenlerListesi[i];
        i++;
        updateStatistics();
      }
      gelen="";
      print(gelenlerListesi);
    } else {
      return null;
    }

  }

  denemeMethod(){

    birinciBolgeDeger = 0;
    ikinciBolgeDeger = 0;
    ucuncuBolgeDeger = 0;
    birinciSiraDeger = 0;
    ikinciSiraDeger = 0;
    ucuncuSiraDeger = 0;
    voisinDeger = 0;
    orphelinsDeger = 0;
    tierDeger = 0;

    gelenlerListesi = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];






    setState(() {
    });
  }







}

