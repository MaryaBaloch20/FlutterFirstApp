import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
              child: Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                //fontFamily: 'StartNow',
              ),
            ),
            // const SizedBox(
            //   height: 20.0,
            // ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 50.0),
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
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.indigo[500],
                  textStyle: const TextStyle(
                    fontSize: 20.0,
                  )),
            )
          ],
        ));
  }
}
