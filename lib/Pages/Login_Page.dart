import 'package:firt_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
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
              Text(
                "Welcome $name",
                style: const TextStyle(
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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
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
              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(const Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  width: changeButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius:
                        BorderRadius.circular(changeButton ? 50 : 15.0),
                    // shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                  ),
                  duration: const Duration(seconds: 1),
                  child: changeButton
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              //   child: const Text(
              //     "Login",
              //     style: TextStyle(color: Colors.white),
              //   ),
              //   style: ElevatedButton.styleFrom(
              //       primary: Colors.indigo[500],
              //       minimumSize: const Size(120, 40)),
              // )
            ],
          ),
        ));
  }
}
