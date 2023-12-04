import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login_app/screens/homescreen.dart';
 TextStyle myStyle = const TextStyle(fontSize: 25);
 // ignore: camel_case_types
 class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

// ignore: camel_case_types
class _LoginscreenState extends State<Loginscreen> {
 late String username;
  late String password;

  
  
  @override
  Widget build(BuildContext context) {
     final usernameField= TextField(
      onChanged: (val){
        setState(() {
          
          username = val;
        });
      },
    style: myStyle,
    decoration:  const InputDecoration(contentPadding: EdgeInsets.all(10),
    hintText: "username",
    border: OutlineInputBorder(  borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
    
    
    )
    ),
     
  ));

   final passwordField= TextField(
     onChanged: (val){
        setState(() {
          
          password = val;
        });
      },
    obscureText: true,
    style: myStyle,
    decoration:  const InputDecoration(contentPadding: EdgeInsets.all(10),
    hintText: "password",
    border: OutlineInputBorder(  borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
    
    
    )
    ),
     
  ));
     final Myloginbutton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular( 30.0),
    color: Colors.red[700],
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      onPressed: (){
        if (username == "sakxam"&& password =="1234"){
          Navigator.push(context, MaterialPageRoute(builder: (contex)=>Homescreen(username )));

           
        }
        else{
          print("password incorrect");
        }

        // ignore: avoid_print
        print( "login button is pressed");
      },
      child: const Text('login',style: TextStyle(color: Colors.white,fontSize: 25)),
    ),

  );
    return  Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child:  Padding( padding :const EdgeInsets.all(20),
          child:  ListView(children: [
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
            
            const SizedBox(height: 20),
            const Icon(Icons.supervised_user_circle, size: 200,),
            const SizedBox(height: 100,),
             usernameField,
            const SizedBox(height: 20,),
            passwordField,
            const SizedBox(height: 20,),
            Myloginbutton,
             const SizedBox(height: 70,),
             const Text('#flutter_with_sakxam',style: TextStyle(color: Colors.black,fontSize: 25))


          ],),
          ],)
          ),

        ),
      ),
      


    );
  }
}