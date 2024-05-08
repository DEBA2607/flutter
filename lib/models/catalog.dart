class CatalogModel {
  static List<Item> items = [];

  //Get Item by ID
  static Item getById(int id) =>
      items.firstWhere((element) => element.id == id);

  //Get Item by Position
  static Item getByPos(int pos) => items[pos];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imgURL;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imgURL});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        imgURL: map["image"]);
  }

  String? get image => null;
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": imgURL,
      };
}
