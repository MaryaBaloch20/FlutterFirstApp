import 'package:firt_app/Pages/home_page.dart';
import 'package:firt_app/Pages/login_page.dart';
import 'package:firt_app/utils/routes.dart';
import 'package:firt_app/widgets/themes.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/src/material/colors.dart';

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
      theme: MyTheme.lightTheme((context) => null),
      darkTheme: MyTheme.darkTheme((context) => null),
      initialRoute: MyRoutes.loginRoute,

      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage()
      },
    );
  }
}
