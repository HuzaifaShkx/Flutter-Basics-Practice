import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import '../drawer.dart';
import 'dart:convert';
class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  TextEditingController _namecontroller=new TextEditingController();
  var mytext="Change Me";
  var abc="https://http://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
      // TODO: implement initState
      super.initState();
      getData();
    }
    getData() async {
      var res = await http.get(abc);
      print(res.body);
      data=jsonDecode(res.body);
      setState(() {
              
            });
    }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          title: Text("Awesome App"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
       
            child:data!=null?
             SingleChildScrollView(
                          child: Card(
           /* child: Column(
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
                  
              ),*/
          ),
            ):Center(child: CircularProgressIndicator(),)
      
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