import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rulet_v4/screens/authenticate/statistics.dart';
import 'package:rulet_v4/screens/fotograf_widget.dart';
import 'package:rulet_v4/services/auth_service.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Statistics statistics = Statistics();
  final AuthService _authService = AuthService();
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
                    Center(child: isOn ? FotografWidget() : Statistics()),
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
                        "Önceki turu sil",
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        if (gelenlerListesi.length > 8) {
                          setState(() {
                            gelenlerListesi.removeLast();
                            print(gelenlerListesi);
                          });
                        } else {
                          return null;
                        }
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
                            gelen = "";
                          }
                          statistics.

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
}
