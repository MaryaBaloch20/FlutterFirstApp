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
}

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Iphone 13",
        desc: "Apple iphone 13 Latest",
        price: 1200,
        imageUrl: "https://asset.conrad.com/media10/isa/160267/c1/-/en/002471203PI00/image.jpg",
        color: "Light Blue")
  ];
}
