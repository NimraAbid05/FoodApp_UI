import 'dart:ui';

import 'package:flutter/material.dart';
class Login_View extends StatefulWidget {
  const Login_View({super.key});

  @override
  State<Login_View> createState() => _Login_ViewState();
}

class _Login_ViewState extends State<Login_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 252, 0),
      body: Column(
children: [

   Center(
     child: Padding(
      padding: const EdgeInsets.only(top:70.0),
      child: Text("W E L C O M E",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.center,),
  ),
   ),
  Padding(
    padding: const EdgeInsets.only(top:20.0,bottom: 20),
    child: Center(
      child: Container(
      
        child: Image.asset("images/pic.png", width: 150,height: 150,),
      ),
    
    ),
  ),
   Container(
   
    child: Text("Hunger Bites",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,fontStyle: FontStyle.normal,),)),
  
  Padding(
    padding: const EdgeInsets.only(top:8.0),
    child: Text("We deliver fastfood",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black,),),
  ),  
  Text("AT YOUR DOORSTEP",style: TextStyle(fontSize: 19,fontWeight: FontWeight.normal,color: Colors.black,),),  

  Padding(
    padding: const EdgeInsets.only(top:20.0,bottom: 8.0,left: 25.0,right: 25.0),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Email or username",prefixIcon: Icon(Icons.email),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    ),
  ),
   Padding(
     padding: const EdgeInsets.only(top:8.0,left: 25.0,right: 25.0,bottom: 8.0),
     child: TextField(
      decoration: InputDecoration(
        hintText: "Password",prefixIcon: Icon(Icons.remove_red_eye),
         enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
  ),
   ),
   Padding(
     padding: const EdgeInsets.only(top:20.0),
     child: SizedBox(
      width: 125,
      height: 45,
      child: ElevatedButton(onPressed: (){}, style: ButtonStyle(
      
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        
       
      ),
    ),
  ), child: Text("Login",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),)),
   ),
     ], ),
      
    );
  }
}