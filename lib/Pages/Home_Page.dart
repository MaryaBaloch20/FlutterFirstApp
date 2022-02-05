import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const int no = 2;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: const Text(
            "This is the HomePage",
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
