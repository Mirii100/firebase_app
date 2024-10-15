import 'package:flutter/material.dart';


class MyTextfield extends StatelessWidget {
  final String hintText;
  final bool obscuretext;
  final TextEditingController controller;

  const MyTextfield({super.key,required this.controller,
  required this.hintText,required this.obscuretext});


  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller:controller ,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),


          ),
        hintText: hintText,


      ),
      obscureText: true,

    );
  }
}
