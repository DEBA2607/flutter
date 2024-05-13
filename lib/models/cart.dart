import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  late CatalogModel _catalog;
  final List<num> _itemIds = [];
  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add items
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
