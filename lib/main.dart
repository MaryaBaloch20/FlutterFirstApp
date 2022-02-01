import 'package:firt_app/Pages/Home_Page.dart';
import 'package:firt_app/Pages/Login_Page.dart';
import 'package:flutter/material.dart';

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
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.amber,
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
