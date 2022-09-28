import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/page/home.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        backgroundColor: Colors.yellow,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 140,
                    backgroundImage: AssetImage("image/1.png"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pizza",
                  style: TextStyle(fontSize: 73, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Pris 1500 rupise",
                  style: TextStyle(fontSize: 23),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "With extra chiz and batter",
                  style: TextStyle(fontSize: 23),
                ),
                SizedBox(
                  height: 50,
                ),
                CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Container(
                      height: 50,
                      width: 290,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      child: RotatedBox(
                          quarterTurns: 0,
                          child: Text(
                            "Order",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    onPressed: () {

                    }),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
