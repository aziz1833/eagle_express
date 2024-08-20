import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/my_button.dart';
import 'components/my_textfield.dart';

class ForgotPassword extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  ForgotPassword({super.key}) ;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop() ;
        },),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Forgot password")
          ],
        ),
      ),
      body: Center (child:Column(
        children: [
          SizedBox(height: 100,),
          Image.asset("../assets/recover.png",width: 100,height: 100,),
          SizedBox(height: 20,),
          Text("Enter Email Address",style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 50,),
          MyTextField(
            text: email,
            hinText: "example@gmail.com",
            obscureText: false,
          ),
          SizedBox(height: 20,),
          //button forgot password
             GestureDetector(
              onTap: () {
                showDialog(
  context: context,
  builder: (context) {
    return Dialog(
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8), // Optional: For rounded corners
        ),
        child: Center(
          child: Text(
            "You will receive your new password via E-mail",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  },
);
;
              },
              child:Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15
                )
              ),
              child:Center(child:Text("Send",style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w200
              ),textAlign: TextAlign.center,)
              ),))
             
        ],
      ),
      )
    );
  }
}