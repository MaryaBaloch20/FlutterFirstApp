import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int no = 2;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Marya's App"),
        centerTitle: true,
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: const Text(
            "Hey this is my app no $no",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
