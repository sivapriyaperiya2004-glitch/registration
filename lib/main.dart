import 'package:flutter/material.dart';
import 'package:registration/Signupscreen.dart';
import 'package:registration/forgotpassword.dart';
import 'package:registration/login_screen.dart';
import 'package:registration/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: Welcome()),
  );
}
