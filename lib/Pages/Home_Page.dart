import 'package:firt_app/models/catalog.dart';
import 'package:firt_app/widgets/drawer.dart';
import 'package:firt_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(
      30,
      (index) => CatalogModel.items[0],
    );
    // const int no = 2;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blue[900],
        title: const Text("Catalog App"),
        centerTitle: true,
      ),
      body:ListView.builder(itemCount: dummyList.length,
      itemBuilder: (context , index){
        return ItemWidget(item: dummyList[index],);
      },
      ),
      drawer: const MyDrawer(),
    );
  }
}
