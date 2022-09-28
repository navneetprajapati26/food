import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/page/login_page.dart';
import 'package:food/page/order.dart';
import 'package:food/utils/appbar.dart';
import 'package:food/utils/baner.dart';
import 'package:food/utils/scroll_handeler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      // appBar: AppBar(
      //   title: Text("Yo Yo food",style: TextStyle(color: Colors.black),),
      //   centerTitle: true,
      //   backgroundColor: Colors.yellow,
      //   actions: [
      //     IconButton(onPressed: (){
      //       logOut();
      //     },
      //         icon: Icon(Icons.exit_to_app)),
      //   ],
      // ),
      body: Container(
        color: Colors.yellow,
        child: Stack(
          children: [
            AppBarCustom(),
            Baner(),
            DraggableScrollableSheet(
                initialChildSize: 0.6,
                minChildSize: 0.5,
                builder: (BuildContext context,
                    ScrollController myScrollController) {
                  return ListView.builder(
                      controller: myScrollController,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 12,
                              ),
                              ScrollHandel(),
                              SizedBox(
                                height: 25,
                              ),
                              // card
                              Container(
                                height: 150,
                                width: 360,
                                //decoration: BoxDecoration(color: Color(0xFFD2E4FC)),
                                child: Card(
                                  color: Colors.white,//Color(0xFFD2E4FC),
                                  // shape: ShapeBorder,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      CircleAvatar(
                                        radius: 55,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage:
                                            AssetImage("image/1.png"),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Pizza",
                                            style: TextStyle(
                                                fontSize: 33,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "Pris 1500 rupise",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "With extra chiz and batter",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      //## order
                                      CupertinoButton(
                                          padding: EdgeInsets.zero,
                                          child: Container(
                                            height: 110,
                                            width: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: RotatedBox(
                                                quarterTurns: 1,
                                                child: Text(
                                                  "Order",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, CupertinoPageRoute(builder: (context) => OrderPage()));
                                          }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),


                              SizedBox(
                                height: 15,
                              ),
                              // card
                              Container(
                                height: 150,
                                width: 360,
                                //decoration: BoxDecoration(color: Color(0xFFD2E4FC)),
                                child: Card(
                                  color: Colors.white,//Color(0xFFD2E4FC),
                                  // shape: ShapeBorder,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      CircleAvatar(
                                        radius: 55,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage:
                                        AssetImage("image/2.png"),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Pizza",
                                            style: TextStyle(
                                                fontSize: 33,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "Pris 1500 rupise",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "With extra chiz and batter",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      //## order
                                      CupertinoButton(
                                          padding: EdgeInsets.zero,
                                          child: Container(
                                            height: 110,
                                            width: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: RotatedBox(
                                                quarterTurns: 1,
                                                child: Text(
                                                  "Order",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, CupertinoPageRoute(builder: (context) => OrderPage()));
                                          }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),


                              SizedBox(
                                height: 15,
                              ),
                              // card
                              Container(
                                height: 150,
                                width: 360,
                                //decoration: BoxDecoration(color: Color(0xFFD2E4FC)),
                                child: Card(
                                  color: Colors.white,//Color(0xFFD2E4FC),
                                  // shape: ShapeBorder,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      CircleAvatar(
                                        radius: 55,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage:
                                        AssetImage("image/3.png"),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Pizza",
                                            style: TextStyle(
                                                fontSize: 33,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "Pris 1500 rupise",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "With extra chiz and batter",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      //## order
                                      CupertinoButton(
                                          padding: EdgeInsets.zero,
                                          child: Container(
                                            height: 110,
                                            width: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: RotatedBox(
                                                quarterTurns: 1,
                                                child: Text(
                                                  "Order",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, CupertinoPageRoute(builder: (context) => OrderPage()));
                                          }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),



                              SizedBox(
                                height: 15,
                              ),
                              // card
                              Container(
                                height: 150,
                                width: 360,
                                //decoration: BoxDecoration(color: Color(0xFFD2E4FC)),
                                child: Card(
                                  color: Colors.white,//Color(0xFFD2E4FC),
                                  // shape: ShapeBorder,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      CircleAvatar(
                                        radius: 55,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage:
                                        AssetImage("image/4.png"),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Pizza",
                                            style: TextStyle(
                                                fontSize: 33,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "Pris 1500 rupise",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "With extra chiz and batter",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      //## order
                                      CupertinoButton(
                                          padding: EdgeInsets.zero,
                                          child: Container(
                                            height: 110,
                                            width: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: RotatedBox(
                                                quarterTurns: 1,
                                                child: Text(
                                                  "Order",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, CupertinoPageRoute(builder: (context) => OrderPage()));
                                          }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),



                              SizedBox(
                                height: 15,
                              ),
                              // card
                              Container(
                                height: 150,
                                width: 360,
                                //decoration: BoxDecoration(color: Color(0xFFD2E4FC)),
                                child: Card(
                                  color: Colors.white,//Color(0xFFD2E4FC),
                                  // shape: ShapeBorder,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      CircleAvatar(
                                        radius: 55,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage:
                                        AssetImage("image/5.png"),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Pizza",
                                            style: TextStyle(
                                                fontSize: 33,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "Pris 1500 rupise",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "With extra chiz and batter",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      //## order
                                      CupertinoButton(
                                          padding: EdgeInsets.zero,
                                          child: Container(
                                            height: 110,
                                            width: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: RotatedBox(
                                                quarterTurns: 1,
                                                child: Text(
                                                  "Order",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, CupertinoPageRoute(builder: (context) => OrderPage()));
                                          }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),



                              SizedBox(
                                height: 15,
                              ),
                              // card
                              Container(
                                height: 150,
                                width: 360,
                                //decoration: BoxDecoration(color: Color(0xFFD2E4FC)),
                                child: Card(
                                  color: Colors.white,//Color(0xFFD2E4FC),
                                  // shape: ShapeBorder,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      CircleAvatar(
                                        radius: 55,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage:
                                        AssetImage("image/6.png"),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Pizza",
                                            style: TextStyle(
                                                fontSize: 33,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "Pris 1500 rupise",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "With extra chiz and batter",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      //## order
                                      CupertinoButton(
                                          padding: EdgeInsets.zero,
                                          child: Container(
                                            height: 110,
                                            width: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: RotatedBox(
                                                quarterTurns: 1,
                                                child: Text(
                                                  "Order",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, CupertinoPageRoute(builder: (context) => OrderPage()));
                                          }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),



                              SizedBox(
                                height: 15,
                              ),
                              // card
                              Container(
                                height: 150,
                                width: 360,
                                //decoration: BoxDecoration(color: Color(0xFFD2E4FC)),
                                child: Card(
                                  color: Colors.white,//Color(0xFFD2E4FC),
                                  // shape: ShapeBorder,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      CircleAvatar(
                                        radius: 55,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage:
                                        AssetImage("image/7.png"),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Pizza",
                                            style: TextStyle(
                                                fontSize: 33,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "Pris 1500 rupise",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "With extra chiz and batter",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      //## order
                                      CupertinoButton(
                                          padding: EdgeInsets.zero,
                                          child: Container(
                                            height: 110,
                                            width: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: RotatedBox(
                                                quarterTurns: 1,
                                                child: Text(
                                                  "Order",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, CupertinoPageRoute(builder: (context) => OrderPage()));
                                          }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),



                              SizedBox(
                                height: 15,
                              ),
                              // card
                              Container(
                                height: 150,
                                width: 360,
                                //decoration: BoxDecoration(color: Color(0xFFD2E4FC)),
                                child: Card(
                                  color: Colors.white,//Color(0xFFD2E4FC),
                                  // shape: ShapeBorder,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      CircleAvatar(
                                        radius: 55,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage:
                                        AssetImage("image/8.png"),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Pizza",
                                            style: TextStyle(
                                                fontSize: 33,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "Pris 1500 rupise",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "With extra chiz and batter",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      //## order
                                      CupertinoButton(
                                          padding: EdgeInsets.zero,
                                          child: Container(
                                            height: 110,
                                            width: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: RotatedBox(
                                                quarterTurns: 1,
                                                child: Text(
                                                  "Order",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, CupertinoPageRoute(builder: (context) => OrderPage()));
                                          }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),



                              SizedBox(
                                height: 15,
                              ),
                              // card
                              Container(
                                height: 150,
                                width: 360,
                                //decoration: BoxDecoration(color: Color(0xFFD2E4FC)),
                                child: Card(
                                  color: Colors.white,//Color(0xFFD2E4FC),
                                  // shape: ShapeBorder,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      CircleAvatar(
                                        radius: 55,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage:
                                        AssetImage("image/9.png"),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Pizza",
                                            style: TextStyle(
                                                fontSize: 33,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "Pris 1500 rupise",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "With extra chiz and batter",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      //## order
                                      CupertinoButton(
                                          padding: EdgeInsets.zero,
                                          child: Container(
                                            height: 110,
                                            width: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: RotatedBox(
                                                quarterTurns: 1,
                                                child: Text(
                                                  "Order",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, CupertinoPageRoute(builder: (context) => OrderPage()));
                                          }),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                })
          ],
        ),
      ),
    );
  }
}
