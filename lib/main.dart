import 'package:flutter/material.dart';
import 'package:tutorial_2/pages/home.dart';
void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home: homepage(),
    theme: ThemeData(
      primarySwatch:Colors.purple, 
    ),
  ));
}

