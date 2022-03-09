class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String imageUrl;
  final String color;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.imageUrl,
      required this.color});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        imageUrl: map["image"],
        color: map["color"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "image": imageUrl,
        "color": color
      };
}

class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "Iphone 12",
        desc: "Apple iphone 12 Latest",
        price: 1200,
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
        color: "Light Blue")
  ];
}
