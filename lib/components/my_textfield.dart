import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final TextEditingController text;
  final String hinText;
  final bool obscureText;
  final Widget? icon ;



   MyTextField({
    super.key,
    required this.text, 
    required this.hinText,
    required this.obscureText,
    this.icon

    });

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                
                controller: text ,
                obscureText: obscureText,
                decoration: InputDecoration(
                  prefixIcon: icon!=null ?  icon : null,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hinText,
                ),
              ),
            );
  }
}