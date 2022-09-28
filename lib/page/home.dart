import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/page/login_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  void logOut() async{
    await FirebaseAuth.instance.signOut();
    //for aftor login can't open agein login page
    Navigator.popUntil(context, (route) => route.isFirst);
    //for going home page and for can't open agein login page pushReplacement
    Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => LogIn()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(onPressed: (){
            logOut();
          },
              icon: Icon(Icons.exit_to_app)),
        ],
      ),




    );
  }
}
