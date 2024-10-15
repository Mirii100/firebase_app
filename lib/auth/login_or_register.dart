import 'package:firebase_app/pages/register_page.dart';
import 'package:firebase_app/pages/second_project.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // showing a login page
bool showLoginPage=true;

  //creating a toggle b2n 2 pages

void togglePages(){
  setState(() {
    showLoginPage=!showLoginPage;

  });
}

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onTap: togglePages);
    }
    else{
      return  MyRegister(onTap:togglePages);
    }
  }
}
