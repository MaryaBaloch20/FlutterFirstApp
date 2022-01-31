  import 'package:flutter/material.dart';

  void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  home:  Home(), //jo custom widget(class) bnai hai, usko idhr call kr rhy
  ));

  class Home extends StatelessWidget { //Custom widget bnaya hai, statless ka mtlb k jo state hai wo change nh hogi iski
    const Home({Key? key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Hi I am Marya Baloch'),
          centerTitle: true, backgroundColor: Colors.teal[700],),
        body:  Center(
          child: Image.network('https://images.unsplash.com/photo-1637531503139-056bec4fdb9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGFsbGFofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
        ),) ,

        floatingActionButton: FloatingActionButton(onPressed: (){},
          child: const Text("+",
            style: TextStyle(
              fontSize: 30.0,),),
          backgroundColor: Colors.teal[700],),

      );
    }
  }
  //TO INSERT IMAGE IN THE BODY
  // body:  Center(child: Image.network('Insert Link Here'),) ,

  //TO INSERT TEXT IN THE BODY - CENTER
  // body:  Center(child: Text(
  // 'This is my first app',
  // style: TextStyle(
  // fontSize: 20.0,
  // fontWeight: FontWeight.bold,
  // letterSpacing: 2.0,
  // color: Colors.teal[700],
  // fontFamily: 'StartNow',
  // ),
  // ),) ,
  //