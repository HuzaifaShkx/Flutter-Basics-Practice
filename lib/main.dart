import 'package:flutter/material.dart';
import 'package:tutorial_2/pages/login_page.dart';
void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch:Colors.purple, 
    ),
  ));
}