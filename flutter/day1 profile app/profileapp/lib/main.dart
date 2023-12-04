 
import 'package:flutter/material.dart';


 void main()
 {
  
  runApp(MaterialApp(
    title:"Profile App",
    home: Scaffold(appBar: AppBar(
      centerTitle: true,
      title: const Text("sakxam ko profile app")),

    body:Column (children: [
      const SizedBox(height:15),
      Center ( child:Image.network("https://scontent.fbwa1-1.fna.fbcdn.net/v/t39.30808-6/298155869_5325692447518233_7772814864759953233_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH5j3-xANjlbFp-WEKw_ENkBkTayl488zEGRNrKXjzzMWfDsIHv9iz6Nyc4ENT325Kzxieoo15nqegH0m3jzbE1&_nc_ohc=c14t1qZR_yoAX8Z21dX&_nc_ht=scontent.fbwa1-1.fna&oh=00_AfBNzTSoCK-HaJqp-_QErO7wF7g2WLFvToAqD5YfYTTkIA&oe=63767C8D",height:250,width:250,)
     
   ),  
      const SizedBox(height: 10),
      const Text('NAME: SHAKSHYAM',style:TextStyle(fontSize: 24,color :Colors.red ,fontWeight: FontWeight.bold),),
      const SizedBox(height:5),
      const Text('address : bharatpur-7,krishnapur'),
      const SizedBox(height: 55,),
      const Text('Email :shakshyamkafle11@gmail.com',style: TextStyle(fontSize: 19),),
      const SizedBox(height: 90,),
      const Text('DEVELOP BY: SAKXAM')
      
       ]) 
    ,
  )));
 }
 
 class Bold {
 }