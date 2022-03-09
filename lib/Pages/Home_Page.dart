import 'dart:convert';

import 'package:firt_app/models/catalog.dart';
import 'package:firt_app/widgets/drawer.dart';
import 'package:firt_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    //Method load hony sy pehlly data milta hai idhr.
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/Files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items = List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(
    //   30,
    //   (index) => CatalogModel.items[0],
    // );
    // const int no = 2;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blue[900],
        title: const Text("Catalog App"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) =>
           ItemWidget(
            item: CatalogModel.items[index],
          )
        
      ),
      drawer: const MyDrawer(),
    );
  }
}
