import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{

  final String uid;
  DatabaseService({this.uid});



  final CollectionReference koleksiyonReferansi = FirebaseFirestore.instance.collection('kullaniciFS');




  Stream<QuerySnapshot> get firestoreKullanici {

    return koleksiyonReferansi.snapshots();
  }

}