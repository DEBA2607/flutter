import "package:flutter/material.dart";
import "package:flutter_catalog/core/store.dart";
import "package:flutter_catalog/models/cart.dart";
import "package:velocity_x/velocity_x.dart";

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.xl4.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          const Divider(),
          const _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal();

  @override
  Widget build(BuildContext context) {
    final CartModel cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(
              builder: (context, store, status) {
                return "\$${cart.totalPrice}"
                    .text
                    .xl5
                    .color(context.accentColor)
                    .make();
              },
              mutations: const {RemoveMutation}),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: "Buying not supported yet.".text.make()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          context.theme.highlightColor)),
                  child: "Buy Now".text.white.make())
              .w24(context)
              .h4(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "No Items in Cart :(".text.xl2.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.done),
                  trailing: IconButton(
                    onPressed: () {
                      RemoveMutation(_cart.items[index]);
                      //setState(() {});
                    },
                    icon: const Icon(Icons.remove_circle_outline),
                  ),
                  title: _cart.items[index].name.text.make(),
                ));
  }
}
