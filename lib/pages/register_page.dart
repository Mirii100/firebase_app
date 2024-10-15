import 'package:firebase_app/Components/my_button.dart';
import 'package:firebase_app/Components/my_textfield.dart';
import 'package:flutter/material.dart';


class MyRegister extends StatelessWidget {


  //creating controllers
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  TextEditingController confirmPassword=TextEditingController();
  TextEditingController username=TextEditingController();

  final void  Function()?onTap;
  MyRegister({super.key,required this.onTap});
  //creating login
  void  register(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child:
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                //username
                SizedBox(height: 20,),
                MyTextfield(controller: username,
                    hintText: "username", obscuretext: false),
                SizedBox(height: 10,),
                //email textfield
                SizedBox(height: 20,),
                MyTextfield(controller: emailController,
                    hintText: "email", obscuretext: false),
                SizedBox(height: 10,),
                //password textfield
                MyTextfield(controller: passwordController,
                    hintText: "password", obscuretext: true),
                SizedBox(height: 10,),
                MyTextfield(controller: confirmPassword,
                    hintText: " confirm password", obscuretext: true),
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
                MyButton(text: 'register', onTap: register,

                ),

                //dont have an account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('already have an account ? '),

                    GestureDetector(
                        onTap: onTap,
                        child: GestureDetector(
                          onTap: onTap,
                            child: Text('login here'))),
                  ],
                ),



              ],









            ),
          ),
        ),
      ),
    );
  }
}
