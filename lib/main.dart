import 'package:firt_app/Pages/home_page.dart';
import 'package:firt_app/Pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: const HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.aBeeZee().fontFamily,
      ),
      darkTheme: ThemeData(
        //brightness: Brightness.dark,
        primarySwatch: Colors.lightGreen,
      ),

      routes: {
        "/": (context) => const LoginPage(),
        "/Home": (context) => const HomePage()
      },
    );
  }
}
