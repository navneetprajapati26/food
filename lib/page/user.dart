import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/page/login_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  void logOut() async {
    await FirebaseAuth.instance.signOut();
    //for aftor login can't open agein login page
    Navigator.popUntil(context, (route) => route.isFirst);
    //for going home page and for can't open agein login page pushReplacement
    Navigator.pushReplacement(
        context, CupertinoPageRoute(builder: (context) => LogIn()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "U s e r",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
        actions: [
          CupertinoButton(
              child: Icon(
                Icons.logout_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                logOut();
              })
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 140,
              backgroundImage: AssetImage("image/user.png"),
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Navneet Prajapati",
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 7,),
                    Text(
                      "navnnetprajapti26@gmail.com",
                      style: TextStyle(fontSize: 20,),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
