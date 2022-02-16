import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext(context)) => ThemeData(
      primaryColor: Colors.blue[900],
      fontFamily: GoogleFonts.aBeeZee().fontFamily,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            // fontWeight: FontWeight.bold,
          )
          // textTheme: TextTheme(  : TextStyle(color: Colors.black))
          ),
      drawerTheme: DrawerThemeData(backgroundColor: Colors.blue[900]));

  static ThemeData darkTheme(BuildContext(context)) => ThemeData(
      //brightness: Brightness.dark,
      // primarySwatch: Colors.lightGreen,
      brightness: Brightness.dark,
      appBarTheme:
          AppBarTheme(backgroundColor: Colors.grey[850], elevation: 0.0),
      drawerTheme: DrawerThemeData(backgroundColor: Colors.grey[900]),
            
      );
  // drawerTheme: const DrawerThemeData(backgroundColor: Colors.black54));
}
