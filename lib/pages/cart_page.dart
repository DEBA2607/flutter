import "package:flutter/material.dart";
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
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}".text.xl5.color(context.accentColor).make(),
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

class _CartList extends StatefulWidget {
  const _CartList();

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? "No Items in Cart :(".text.xl2.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.done),
                  trailing: IconButton(
                    onPressed: () {
                      _cart.remove(_cart.items[index]);
                      setState(() {});
                    },
                    icon: const Icon(Icons.remove_circle_outline),
                  ),
                  title: _cart.items[index].name.text.make(),
                ));
  }
}
