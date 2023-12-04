
 
import 'package:flutter/material.dart';


void main(){

  runApp(const ScoreApp());

}
 class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "scoreapp",
      home: ScoreHome(),


      
    );
  }
}
class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  // ignore: non_constant_identifier_names
  void IncreaseNumber(){
    setState(() {
      number++;
      
    });
  }
  void decreasenumber(){
    setState(() {
      number--;
    });
  }
  void resetnumber(){
    setState(() {
      number=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title:const Text("score changer"),
      centerTitle: true,
      

    ),
    floatingActionButton: FloatingActionButton(onPressed: resetnumber,),
    body: Column(children: [

      const SizedBox(height: 40,),
      const Center(child:Text ("score is ",style:TextStyle(color: Colors.green,fontSize: 40,fontWeight: FontWeight.bold))),
      Center(child: Text(number.toString(), style:const TextStyle(color: Colors.green,fontSize: 75,fontWeight: FontWeight.bold))),
      const SizedBox(height: 250,),
      ElevatedButton(onPressed: IncreaseNumber, style: ButtonStyle(backgroundColor:MaterialStateProperty.all(const Color.fromARGB(255, 218, 11, 11))), child:const Text('Increase')),
      const SizedBox(width: 5,),
      ElevatedButton(onPressed: decreasenumber,style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.blue[900]) ), child: const Text('decrease')),
          ]),

    );
  }
}