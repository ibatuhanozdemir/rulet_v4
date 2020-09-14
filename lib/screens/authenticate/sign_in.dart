import 'package:flutter/material.dart';
import 'package:rulet_v4/services/auth_service.dart';
import 'package:rulet_v4/home/home.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Kullanıcı Yetkilendirme"),
          backgroundColor: Colors.green.shade900,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                    validator: (val) =>
                        val.isEmpty ? "Email Boş bırakılamaz" : null,
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Şifre",
                    ),
                    validator: (val) =>
                        val.length < 6 ? "Şifreyi doğru girmediniz" : null,
                    obscureText: true,
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    child: Text("Giriş Yap", style: TextStyle(color: Colors.white),),
                    color: Colors.green.shade900,
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        print(email);
                        print(password);
                        dynamic result = await _auth.signIn(email, password);
                        if (result == null) {
                          setState(() {
                            error = "Giriş Başarısız";
                          });
                        }else if (result != null){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
                        }
                      }
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(error),
                ],
              ),
            ),
          ),
        ));
  }
}
