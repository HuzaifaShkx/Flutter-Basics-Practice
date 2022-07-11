import 'package:flutter/material.dart';
import 'package:tutorial_2/pages/home.dart';

import '../bgimage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  final usernameC= new TextEditingController();
  final passC=new TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body:Stack(
        fit: StackFit.expand,
        children: [
          bgimage(),
           Center(
             child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
                        child: Column(
                children: [
                  Form(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter User Name",
                              labelText: "Username",
                            ),
                          ),
                          SizedBox(height: 20,),

                           TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password",
                            
                            ),  
                            obscureText: true,
                          ),
                        ],),
                      ),
                    ),
                     SizedBox(height: 20,),
                     RaisedButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                     },
                     child: Text("Login"),
                     color: Colors.amber,
                     ),
                ],
              ),
          ),
        ),
      ),
           ),
        ],
      ),
    );
  }
}