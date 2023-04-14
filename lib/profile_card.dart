import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:goodle_signin/google_sign_in_provider.dart';
import 'package:provider/provider.dart';
class LoggedInWidget extends StatelessWidget {
  const LoggedInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      appBar: AppBar(
        title: Text('logged in'),
        centerTitle: true,
        actions: [
          TextButton( child: Text('logout'),
          onPressed: () {
            final provider = 
            Provider.of<GoogleSignInProvider>(context,listen:false); 
            provider.logout();
          },)
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Profile',
            style: TextStyle(fontSize: 15),),
            SizedBox(
              height: 32,
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.photoURL!),
              

            ),
            SizedBox(
              height: 8,

            ),
            Text('Name:' + user.displayName!,
            style: TextStyle(
              color: Colors.white,fontSize: 16
            ),),
            SizedBox(
              height: 8,
            ),
            Text(
        'Email:'+user.email!,
        style: TextStyle(
          color: Colors.white,fontSize: 16
        ),
            ),
          ],
        ),
        
      ),
    );
  }
}