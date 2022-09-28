import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/utils/txtFiled.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  TextEditingController emailControlar = TextEditingController();
  TextEditingController passwordControlar = TextEditingController();
  TextEditingController conPasswordControlar = TextEditingController();

  void createAccunt() async {
    String email = emailControlar.text.trim();
    String password = passwordControlar.text.trim();
    String cPassword = conPasswordControlar.text.trim();

    if (email == "" || password == "" || cPassword == "") {
      final text = "Please fill all the details";
      final snackBar = SnackBar(content: Text(text));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (password != cPassword) {
      final text = "password do not mach";
      final snackBar = SnackBar(content: Text(text));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        if (userCredential != null) {
          Navigator.pop(context);
        }
      } on FirebaseException catch (e) {
        if (e.code != "") {
          final text = e.code.toString();
          final snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "S I N G U P",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("image/food.png"),
            ),
            SizedBox(height: 10,),
            TxeFiled(
              txt: "Entar the email",
              Controller: emailControlar,
            ),
            TxeFiled(
              txt: "Password",
              Controller: passwordControlar,
            ),
            TxeFiled(
              txt: "Conform Password",
              Controller: conPasswordControlar,
            ),
            CupertinoButton(
                child: Container(
                  height: 50,
                  width: 350,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Sing Up",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                onPressed: () {
                  createAccunt();
                })
          ],
        ),
      ),
    );
  }
}
