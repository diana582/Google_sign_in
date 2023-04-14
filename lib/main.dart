import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:goodle_signin/google_sign_in_provider.dart';
import 'package:goodle_signin/sign_up_widget.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'sign_up_widget.dart';
Future main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) =>
    ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
    child: MaterialApp(
      home: signup(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
    ),
    );
  
}