  
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
 
const operetorColor= Color(0xff272727);
const buttonColor= Color(0xff191919);
const orangeColor= Color.fromARGB(251, 238, 216, 14); 

 voidmain(){
 runApp(const MaterialApp(
home:CalculatorApp() ,

 ));
 }


 class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
 //variables
 double firstnum= 0.00;
 double secondnum=0.00;
 var input ='';
 var output ='';
 var opration='';
 var hideinput = false;
 var outputsize =34.0;

 onButtonClick(value){
  //if value is AC
  if(value == "AC"){

    input ='';
    output='';
  }
  else if(value =="<"){
    if(input.isNotEmpty){
       
    input = input.substring(0,input.length-1);

  }}
   else if(value == "="){
    var userinput =input;
    userinput = input.replaceAll("x", "*");
    Parser p =Parser();
    Expression expression = p.parse(userinput);
    ContextModel cm =ContextModel();
    var finalvalue =expression.evaluate(EvaluationType.REAL, cm);
    output = finalvalue.toString();
    if(output.endsWith(".0")){
      output =output.substring(0,output.length-2);
    }
    input = output;
    hideinput =true;
    outputsize =52;
   } else {

    input +value;
     hideinput =false;
    outputsize =34;

   }
   setState(() {
     
   });


 }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            
            
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:  [
               Text(hideinput ? '':input,style: const TextStyle(fontSize: 48,color: Colors.white),),

              const SizedBox(height: 20,),
               Text(output,style: TextStyle(fontSize: 34,color: Colors.white.withOpacity(0.7)),),
               const SizedBox(height: 30,),
              
              ],),
            
            )),
          //buttons area
          Row(
         children: [
            button(text: "AC",buttonbgcolor: operetorColor,tcolor: orangeColor),
             button(text: "<",buttonbgcolor: operetorColor,tcolor: orangeColor),
              button(text: "",buttonbgcolor: Colors.transparent),
               button(text: "/",buttonbgcolor: operetorColor,tcolor: orangeColor),
               ],
               
          ), 
            Row(
         children: [
            button(text: "A7"),
             button(text: "8"),
              button(text: "9"),
               button(text: "x",tcolor: orangeColor,buttonbgcolor: operetorColor),
               ],
          ), 
            Row(
         children: [
            button(text: "4"),
             button(text: "5"),
              button(text: "6"),
               button(text: "-",tcolor: orangeColor,buttonbgcolor: operetorColor),
               ],
          ),   Row(
         children: [
            button(text: "1"),
             button(text: "2"),
              button(text: "3"),
               button(text: "+",tcolor: orangeColor,buttonbgcolor: operetorColor),
               ],
          ),
            Row(
         children: [
            button(text: "%",tcolor: orangeColor,buttonbgcolor: operetorColor),
             button(text: "0<"),
              button(text: "."),
               button(text: "=",buttonbgcolor: orangeColor),
               ],
          ),  
        ],
      )
    );
    // ignore: dead_code
  


    }
    Widget button({

      // ignore: avoid_types_as_parameter_names
      text,tcolor=Colors.white,buttonbgcolor =buttonColor
    }){


   return Expanded(child: Container(
            margin: const EdgeInsets.all(8),

            
            
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),


                padding: const EdgeInsets.all(22),
                backgroundColor: buttonColor),
              
              onPressed: ()=>onButtonClick(text),child:  Text(text,style:TextStyle(fontSize: 18,color: tcolor,fontWeight: FontWeight.bold,)),
               
              )));

    }
 
  }

  

  
