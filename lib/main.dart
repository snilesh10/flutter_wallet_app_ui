import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './screens/welcome.dart';
import './utils/routes.dart';
import './screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.openSans().fontFamily),
      routes: {
        "/": (context) => WelcomePage(),
        MyRoutes.welcomeRoute: (context) => WelcomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
      //  home: WelcomePage(),
    );
  }
}
