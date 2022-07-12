import 'dart:convert';

import 'package:flutter/material.dart';
import '../utils/Constants.dart';
import '../widgets/drawer.dart';
import 'login_page.dart';

class homepageSB extends StatefulWidget {
  @override
  State<homepageSB> createState() => _homepageSBState();
}

class _homepageSBState extends State<homepageSB> {
  var abc = "https://http://jsonplaceholder.typicode.com/photos";
  var data;

  get http => null;



  Future getData() async {
    var res = await http.get(abc);
    print(res.body);
    data = jsonDecode(res.body);
    return data;
  }

  Stream<List<String>>getStreamData(){
    var data=Stream<List<String>>.fromIterable([
      List<String>.generate(20,(index)=> "item $index")
    ]);
    return data;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Constants.prefs?.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, "/login");
            },
          ),
        ],
      ),
      body: StreamBuilder(
        stream: getStreamData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(
                child: Text("Fetch something"),
              );
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(
                  child: Text("Some Error Occured"),
                );
              }
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  snapshot.data[index]["title"]
                ),
                leading: Image.network(
                  
                  snapshot.data[index]["url"]
                ),
              );
            },
            itemCount: data.legth,
          );
        },
      ),
      drawer: myDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.refresh),
        elevation: 1000,
      ),
    );
  }
}
