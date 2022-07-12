import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
         /*   DrawerHeader(
              child: Text("Hello, Welcome Here",style: TextStyle(color: Colors.black)),
            decoration: BoxDecoration(color: Colors.purpleAccent),
          
            ),
            */
            UserAccountsDrawerHeader(
            accountName:Text("Huzaifa Yasin") ,
            accountEmail:Text("huzaifayasin225@gmail.com") ,
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1563351672-62b74891a28a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGdlbnRsZSUyMG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
            ),
            ListTile( leading: Icon(Icons.person),
            title: Text("Account Info"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
            ),
             ListTile( leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("Active"),
            trailing: Icon(Icons.send),
            ),
            
          ],
        ),
      );
  }
}