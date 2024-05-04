import 'package:cortel_flutter_app/login_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(Object context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Urbanist'),
      home: LoginPage()
    );

  }


  // style: ElevatedButton.styleFrom(
  //   primary: Theme.of(context).colorScheme.secondary,
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(8),
  //   ),
  // ),
  // icon: Image.asset(
  //   'Assets/Images/images.png',
  //   height: 24,
  // ),
  // label: Text(
  //   'Login with google',
  //   style: TextStyle(fontSize: 16),
  // ),


   
}


          
        
          
           
