import 'package:flutter/material.dart';
class Baner extends StatelessWidget {
  const Baner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
          //   child: Text("",style: TextStyle(color: Colors.blue,fontSize: 0,fontWeight: FontWeight.bold),),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 200,width: 200,child: Image(image: AssetImage("image/food.png"))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
