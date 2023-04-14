import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:goodle_signin/google_sign_in_provider.dart';
import 'package:provider/provider.dart';
import 'package:goodle_signin/google_sign_in_provider.dart';
import 'dart:io';

class signup extends StatelessWidget {
   signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          FlutterLogo(size: 120,),
          Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Hey! \n Welcome Back',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Align(alignment: Alignment.centerLeft,
          child: Text('Login to your account to continue',
          style: TextStyle(
            fontSize: 15,
            color: Colors.blue
          ),),
          ),
          Spacer(),
          ElevatedButton.icon(
            icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,),
             label: Text('sign up with google'),
             onPressed: () {
               final provider = 
               Provider.of<GoogleSignInProvider>(context, listen: false);
               provider.googleLogin();


             },),
          SizedBox(
            height: 40,
          ),
          Text('already have an account?log in',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15,
          ),),

        ],
      ),
    );
  }
}