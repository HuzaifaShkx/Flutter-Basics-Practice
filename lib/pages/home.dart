import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../utils/Constants.dart';
import '../widgets/drawer.dart';
import 'login_page.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController _namecontroller = new TextEditingController();
  var mytext = "Change Me";
  var abc = "https://http://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  getData();
  }

  /* getData() async {
      var res = await http.get(abc);
      data=jsonDecode(res.body);
      print(data);
      setState(() { });
    }
*/
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
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: data != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        data[index]["title"],
                      ),
                      leading: Image.network(
                        data[index]["url"],
                      ),
                    );
                  },
                  itemCount: data.legth,
                )
              : Center(child: CircularProgressIndicator())),
      drawer: myDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mytext = _namecontroller.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
        elevation: 1000,
      ),
    );
  }
}
