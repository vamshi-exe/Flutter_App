import 'package:firstapp/screens/Home_page.dart';
import 'package:firstapp/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
   runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      //initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },    
   );
  }
}