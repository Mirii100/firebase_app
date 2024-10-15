import 'package:firebase_app/auth/login_or_register.dart';
import 'package:firebase_app/pages/home_page.dart';
import 'package:firebase_app/pages/second_project.dart';
import 'package:firebase_app/theme/dark_mode.dart';
import 'package:firebase_app/theme/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCYi1C6QHNQ73j3zF6mFsZWSr80AGsH8oA",
          appId: "1:802323417435:web:6bd961469c0f34c727f27e",
          messagingSenderId: '802323417435',
          projectId: 'flutterdemo-8ba92'
      ));

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});




  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: lightMode,

    );
  }
}
