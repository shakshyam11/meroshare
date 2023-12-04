import 'package:flutter/material.dart';
class Homescreen extends StatelessWidget {
   
  final String username;
   Homescreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("homepage"),
      ),
      body: Column(
        children: [
        const SizedBox(height: 25,),
        // ignore: prefer_interpolation_to_compose_strings
        Center(child: Text("welcome"+username,style: const TextStyle(color: Color.fromARGB(255, 234, 17, 17),fontSize: 30),)),
        const SizedBox(height: 300,),
        const Text("flutter_with_sakxam",style: TextStyle(color: Colors.black,fontSize: 30),)
      ]),
    );
  }
}