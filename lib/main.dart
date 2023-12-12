

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(debugShowCheckedModeBanner: false,home: HomeActivity());
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});


  mySnackBar(msg,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg))
    );
  }
  myEmail(msg,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg))
    );

  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar: AppBar(title:const Text("Show Message",style: TextStyle(color: Colors.white),) ,

      backgroundColor: Colors.blue,
  actions: [
    IconButton(onPressed: (){mySnackBar("Message",context);}, icon:const Icon(Icons.message),color: Colors.white,),
    IconButton(onPressed: (){myEmail("Email",context);}, icon:const Icon(Icons.email),color: Colors.white,),

  ],
  ),);
  }

}