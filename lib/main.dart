import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutorial_2/pages/home.dart';
import 'package:tutorial_2/pages/homepage_with_fb.dart';
import 'package:tutorial_2/pages/login_page.dart';
import 'package:tutorial_2/utils/Constants.dart';
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs=await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Awesome App",

    initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/login': (context) => LoginPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) => homepage(),
      },
    home: Constants.prefs?.getBool("loggedIn")==true
    ?homepageFB()
    :LoginPage(),
    theme: ThemeData(
      primarySwatch:Colors.purple, 
    ),
  ));
}