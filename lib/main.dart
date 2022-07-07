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
      body: Padding(
        padding: const EdgeInsets.all(10.0), 
        child: Align(
          alignment: Alignment.center,
                  child: Container(
            width:200,
            height: 300,
            color: Colors.teal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
                   children:[
                      Container(
                  padding: EdgeInsets.all(20.0) ,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
                      )
                    ],
                    color: Colors.teal,
                    gradient: LinearGradient(colors:[Colors.lime, Colors.green,Colors.amber])
                  ),
                  width: 100,
                  height: 100,
                  child: Text("I am a Box",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                  ),
                ) ,
                 Container(
                  padding: EdgeInsets.all(20.0) ,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
                      )
                    ],
                    color: Colors.teal,
                    gradient: LinearGradient(colors:[Colors.lime, Colors.green,Colors.amber])
                  ),
                  width: 100,
                  height: 100,
                  child: Text("I am a Box",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                  ),
                ) ,
                 Container(
                  padding: EdgeInsets.all(20.0) ,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
                      )
                    ],
                    color: Colors.teal,
                    gradient: LinearGradient(colors:[Colors.lime, Colors.green,Colors.amber])
                  ),
                  width: 100,
                  height: 100,
                  child: Text("I am a Box",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                  ),
                ) ,
                   ]
                  
              ),
          ),
        ),
      )
    );
  }
}