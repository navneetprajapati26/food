import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/page/home.dart';
import 'package:food/page/signup_page.dart';
import 'package:food/utils/txtFiled.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailControlar =TextEditingController();
  TextEditingController passwordControlar = TextEditingController();


  void login() async{

    String email = emailControlar.text.trim();
    String password = passwordControlar.text.trim();

    if(email=="" ||  password==""){
      final text = "Please fill all the details";
      final snackBar= SnackBar(content: Text(text));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    else{
      try{
        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
        if(userCredential!=null){
          //for aftor login can't open agein login page
          Navigator.popUntil(context, (route) => route.isFirst);
          //for going home page and for can't open agein login page pushReplacement
          Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => HomePage()));
        }
      }on FirebaseException catch(e){
        final text = e.code.toString();
        final snackBar = SnackBar(content: Text(text));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "L O G i N",
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
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("image/food.png"),
            ),
            SizedBox(height: 10,),
            TxeFiled(txt: "Entar the email",Controller: emailControlar,),
            TxeFiled(txt: "Password",Controller: passwordControlar,),
            CupertinoButton(
                child: Container(
                  height: 60,
                  width: 350,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Log in",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                onPressed: () {
                  login();
                }),
            CupertinoButton(
                child: Text(
                  "No account Sing Up",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (context) => SingUp()));
                })
          ],
        ),
      ),
    );
  }
}
