import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:goodle_signin/profile_card.dart';
import 'package:goodle_signin/sign_up_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
          return Center(child: CircularProgressIndicator());
          else if (snapshot.hasData){
            return LoggedInWidget();
          }
          else if (snapshot.hasError){
               return Center(child: Text('Something went wrong'),);
          }
          else{
          return signup();
          }
        },
      ),
    );
  }
}