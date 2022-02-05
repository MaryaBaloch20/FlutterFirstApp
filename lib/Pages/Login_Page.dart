import 'package:firt_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 10.0),
                child: Image.asset(
                  "assets/images/login_image3.jpg",
                  fit: BoxFit.cover,
                  // height: 500.0,
                ),
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  //fontFamily: 'StartNow',
                ),
              ),
              // const SizedBox(
              //   height: 20.0,
              // ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 3.0, horizontal: 50.0),
                  child: Column(children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                  ])),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo[500],
                    minimumSize: const Size(120, 40)),
              )
            ],
          ),
        ));
  }
}
