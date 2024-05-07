import "package:flutter/material.dart";
import "package:flutter_catalog/models/catalog.dart";
import "package:flutter_catalog/widgets/themes.dart";
import "package:velocity_x/velocity_x.dart";

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({super.key, required this.catalog});
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
          child: Column(
        children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.imgURL))
              .h32(context),
          Expanded(
              child: VxArc(
            arcType: VxArcType.convey,
            height: 30,
            child: Container(
                color: context.canvasColor,
                width: context.screenWidth,
                child: Column(children: [
                  catalog.name.text.bold.xl2.color(context.accentColor).make(),
                  catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                  50.heightBox,
                  "Ut temporibus aut saepe accusamus dolores temporibus voluptas.Atque pariatur aut est qui. Dolore similique ea commodi. Quo consequatur explicabo ea velit aut.Dolorem ducimus officiis repellendus."
                      .text
                      .textStyle(context.captionStyle)
                      .xl
                      .make()
                      .p32()
                ]).py32()),
          ))
        ],
      ).p16().centered()),
    );
  }
}
