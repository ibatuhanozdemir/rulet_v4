import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:rulet_v4/home/home.dart';
import 'package:rulet_v4/models/kullanici.dart';
import 'package:rulet_v4/screens/authenticate/authenticate.dart';
import 'package:rulet_v4/screens/authenticate/statistics.dart';
import 'package:rulet_v4/screens/wrapper.dart';
import 'package:rulet_v4/services/auth_service.dart';
import 'package:rulet_v4/services/database_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          return MultiProvider(
            providers: [
              StreamProvider<Kullanici>.value(
                  value: AuthService().authServiceIcindekiStreaminAdi),
              StreamProvider<QuerySnapshot>.value(
                  value: DatabaseService().firestoreKullanici),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light(),
              home: Home(),
            ),
          );
        });
  }
}
