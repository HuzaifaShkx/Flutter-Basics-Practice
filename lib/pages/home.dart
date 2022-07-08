import 'package:flutter/material.dart';

import '../bgimage.dart';
import '../drawer.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  TextEditingController _namecontroller=new TextEditingController();
  var mytext="Change Me";
  @override
  void initState() {
      // TODO: implement initState
      super.initState();
    }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          title: Text("Awesome App"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
            child: Card(
            child: Column(
              children: [
               bgimage(),
                SizedBox(
                  height: 20,
                ),
                Text(
                mytext,
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: _namecontroller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Enter something",
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                ],
                
            ),
          ),
        ),
      ),
      drawer: myDrawer(),
      floatingActionButton: FloatingActionButton( 
        onPressed: (){
          mytext=_namecontroller.text; 
          setState(() {
                      
                    });
        },
        child: Icon(Icons.refresh),
        elevation: 1000,

      ),
      );    
  }
}