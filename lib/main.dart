import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home: homepage(),

  ));
}

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Awesome App"),
      ),
      body: Container(
         child: Center(child: Text("Welcome to my app")),
         

      ),
    );
  }
}