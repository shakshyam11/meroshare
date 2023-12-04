import 'package:flutter/material.dart';
import 'package:login_app/screens/loginscreeen.dart';

void main()=> runApp(const loginApp());

// ignore: camel_case_types
class loginApp extends StatelessWidget {
  const loginApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"loginApp",
      home: Loginscreen(

      ),
    );
  }
}