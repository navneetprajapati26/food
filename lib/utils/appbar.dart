import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/page/user.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                    icon: Icon(
                      Icons.zoom_in,
                      color: Colors.black26,
                    ),
                    //hintText: "Sharch"
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("image/user.png"),
              ),
              onPressed: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) => UserPage()));
              }),

        ],
      ),
    );
  }
}
