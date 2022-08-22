import 'package:eight_project/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:eight_project/custom_widgets/cart.dart';
import 'package:eight_project/custom_widgets/bottombar.dart';
import "package:provider/provider.dart";

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductProviders cartProvider = Provider.of(context);
    double total = cartProvider.subtotal() + cartProvider.taxes();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Cart",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 31, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Image.asset(
            "assets/icons/drawable-hdpi/paymentconfirmed.png",
            width: 28,
            height: 28,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Cart2(),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Colors.transparent,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Subtotal:"),
                        Text(
                          '\$ ${double.parse(cartProvider.subtotal().toStringAsFixed(2)).toString()}',
                          style: const TextStyle(color: Colors.black26),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Taxes: "),
                        Text(
                          '\$ ${double.parse(cartProvider.taxes().toStringAsFixed(2)).toString()}',
                          style: const TextStyle(color: Colors.black26),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("TOTAL:"),
                        Text(
                          '\$ ${double.parse(total.toStringAsFixed(2)).toString()}',
                          style: const TextStyle(color: Colors.black26),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const Bottom(),
    );
  }
}
