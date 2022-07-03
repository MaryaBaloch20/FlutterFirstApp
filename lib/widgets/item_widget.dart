import 'package:firt_app/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 2, 20, 0),
        child: Card(
          elevation: 2.0,
          child: ListTile(
            onTap: () {},
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
              child: Image.network(item.imageUrl),
            ),
            title: Text(item.name, textScaleFactor: 1.3),
            subtitle: Text(
              item.desc,
              textScaleFactor: 1.1,
            ),
            trailing: Text(
              "\$${item.price}",
              textScaleFactor: 1.5,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
