import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/regsiter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context)=> MyLogin(),
      'register':(context)=> MyRegsiter()
    },
  ));
}
