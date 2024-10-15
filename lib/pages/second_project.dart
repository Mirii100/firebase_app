import 'package:firebase_app/Components/my_button.dart';
import 'package:firebase_app/Components/my_textfield.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {


  //creating controllers
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  final void  Function()?onTap;
   LoginPage({super.key,required this.onTap});
  //creating login
  void  login(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
       child:
       Padding(
         padding: const EdgeInsets.all(25.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

           children: [
             //logo
             Icon(Icons.person,
               size: 80,
               color: Theme.of(context).colorScheme.inversePrimary,
             ),
             SizedBox(height: 25,),
             //appname
             Text(' hacknight application ',style: TextStyle(
               fontSize: 20,

             ),),
             //email textfield
             SizedBox(height: 50,),
         MyTextfield(controller: emailController,
             hintText: "email", obscuretext: false),
             SizedBox(height: 10,),
             //password textfield
             MyTextfield(controller: passwordController,
                 hintText: "password", obscuretext: true),
             SizedBox(height: 10,),
             //forgot password
             Row(
               mainAxisAlignment: MainAxisAlignment.end,

               children: [
                 Text("forgot password",style: TextStyle(
                   color: Theme.of(context).colorScheme.secondary
                 ),
                 ),
               ],
             ),
             SizedBox(height: 26,),
             //signup
             MyButton(text: 'login', onTap: login,

             ),

             //dont have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('dont have an account ? '),

                  GestureDetector(
                    onTap: onTap,
                      child: Text('register here')),
                ],
              ),



           ],









         ),
       ),
      ),
    );
  }
}
