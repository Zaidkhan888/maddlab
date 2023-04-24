import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'pages/home_page.dart';
import "pages/login_page.dart";

void main() {
  //funtion
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //here everthing conponent is like a tree structure in flutter
    //build context -- what is  position of the object in a tree
    // fun1(thaila: true); //method
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      // for light theme
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // for dark theme
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.green),

      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the HomePage widget.
        '/': (context) => HomePage(), //
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => LoginPage(),
        // MyRoutes.homeRoute: (context) => HomePage()
        // MyRoutes.loginRoute: (context) => HomePage()
      },
    );
  }

  // fun1({
  //   @required bool thaila = false,
  //   String vegies = "onion",
  //   int money = 100,
  // }) {
  //   //   //doing set -1 task

  //   //   //doing set -2 task
  // }
}

// widget --> Components
//widget --> is similar to the method data type returning something(widget)
// basically everthing a component which you see on screen are widget
//property = <widget>

//stateless and stateFull widget ==> to make a changes in a state we use statefull widget -- which does not render whole page but jsut render a specific part of widget , 

//stateless --> it does not change the state of a component or widget thus it just changes or route the screen

// to make a live  changes we need to call the widget recursively