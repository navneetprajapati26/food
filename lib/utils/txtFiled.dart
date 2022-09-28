import 'package:flutter/material.dart';
class TxeFiled extends StatelessWidget {
  String txt;
  TextEditingController Controller;
   TxeFiled({Key? key,required this.txt, required this.Controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
      child: TextField(
        controller: Controller,
        decoration: InputDecoration(
            hintText: txt,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
            )
        ),
      ),
    );
  }
}
