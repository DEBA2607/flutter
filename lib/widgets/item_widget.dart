import "package:flutter/material.dart";
import "package:flutter_catalog/models/catalog.dart";

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.imgURL),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$ ${item.price}",
          textScaler: const TextScaler.linear(1.8),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
