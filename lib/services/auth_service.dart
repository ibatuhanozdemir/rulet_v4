import 'package:firebase_auth/firebase_auth.dart';
import 'package:rulet_v4/models/kullanici.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object based on FirebaseUser (User)
  // bu bir fonksiyon
  Kullanici _userFromFirebaseUser(User user) {
    return user != null ? Kullanici(uid: user.uid) : null;
  }

  Stream<Kullanici> get authServiceIcindekiStreaminAdi {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
    //.map((User user) => _userFromFirebaseUser(user));
  }

  //sign in anon
  Future sighInAnon() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      User user = userCredential.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString() + "gardaşım hata bu");
      return null;
    }
  }

  Future signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = userCredential.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print("Hatan budur kardeş: ${e.toString()}");
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
