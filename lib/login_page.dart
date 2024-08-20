import 'dart:html';
import 'dart:ui';

import 'package:eagleexpress/components/my_button.dart';
import 'package:eagleexpress/components/my_textfield.dart';
import 'package:eagleexpress/components/square_title.dart';
import 'package:eagleexpress/forgot_pass.dart';
import 'package:eagleexpress/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class LoginPage extends StatelessWidget {
  TextEditingController? email;
  TextEditingController? click;
   LoginPage({super.key});

   //sign user in method
void SignUserIn(){}

  @override
  Widget build(BuildContext context) {
    return  
    Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
                const SizedBox(height: 50),


              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

               const SizedBox(height: 50),

            //welcome back , you've been missed!
            const Text(
              'welcome back , you\'ve been missed!',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,

              ),
            ),

            const SizedBox(height: 25),


              

          
            //username textfield
            MyTextField(text: email ?? TextEditingController(),obscureText: false,hinText: "E-Mail",

            ),
            const SizedBox(height: 10),

            
            
            
          
            //password textfield
            //MyTextField(),
            MyTextField(text: click ?? TextEditingController(),obscureText: true,hinText: "Password",),

            const SizedBox(height: 10),

          
            //forgot password
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return ForgotPassword();
                   }));
                        
                    },
                    child: Text(
                    'Forget Password',
                    style: TextStyle(color: Colors.grey),
                  ),
                   ),
                ],
              ),
            )  ,        

            const SizedBox(height: 25),

            //sign in button
             MyButton(
              text: "Sign In",
              onTap: ()=>SignUserIn(),
            ),

            const SizedBox(height: 50),
          
            //or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child:Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                      ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.0),
                    child:  Text(
                      'Or continue with',
                     style: TextStyle(color:Colors.grey),
                    ),
                  ),
                  Expanded(
                    child:Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
              ],
                        ),
            ),

            const SizedBox(height: 50),
           
          
            //google + facebook sign in buttons
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //google button
                 SquareTile(imagePath: 'assets/google.png'),
                 SizedBox(width: 25),


                //facebook button
                 SquareTile(imagePath: '../assets/facebook.png'),
                 SizedBox(width: 25),
              ],
            ),
            const SizedBox(height: 50),
          
            //not a member? register  now
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not a member?',
                style: TextStyle(color:Colors.grey,),
                ),
              
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:  (context) {
                        return Register() ;
                    })) ;
                  },
                  child: const Text('Register now',
               style:  TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
                
                ),
                ),
              ],
            )
          
          
          ],),
        ),
      ))
    );

  }
}