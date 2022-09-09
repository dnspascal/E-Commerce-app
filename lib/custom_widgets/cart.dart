import 'package:flutter/material.dart'; import "package:provider/provider.dart"; import "package:eight_project/providers/product_provider.dart";

class Cart2 extends StatefulWidget {
  const Cart2({Key? key}) : super(key: key);

  @override
  State<Cart2> createState() => _Cart2State();
}

class _Cart2State extends State<Cart2> {
  @override
  Widget build(BuildContext context) {
    ProductProviders cartProducts = Provider.of<ProductProviders>(context);
    var cartDetails = cartProducts.cart;
    return cartDetails.isEmpty
        ? Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 60.0),
            child: Column(
              children: const [
                Text("Your Cart Is Empty",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        fontSize: 30)),
                Text("Go back to homepage to explore new products",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontStyle: FontStyle.italic,
                        fontSize: 20)),
                Text("@2022",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontStyle: FontStyle.italic,
                        fontSize: 20))
              ],
            ),
          )
        : SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: cartDetails.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Colors.white,
                    )),
                elevation: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 120.0, top: 8),
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.black,
                      ),
                    ),
                    Image.asset(
                      cartProducts.cart[index].imageOfTheProduct,
                      fit: BoxFit.fill,
                      width: 150,
                    ),
                    Text(cartProducts.cart[index].productName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    // const SizedBox(
                    // height: 6,
                    //),
                    const Text("Blue-Medium",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                          fontSize: 10,
                        )),
                    // const SizedBox(
                    //   height: 6,
                    // ),
                    Text(cartProducts.cart[index].price.toString(),
                        style: const TextStyle(
                          color: Colors.black26,
                          fontSize: 40,
                        )),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                              color: Colors.grey,
                            )),
                        child: Row(
                          children: [
                            // const SizedBox(
                            //   width: 1,
                            // ),
                            Image.asset(
                              "assets/icons/drawable-hdpi/addbutton.png",
                              width: 19,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Image.asset(
                              "assets/icons/drawable-hdpi/minusbutton.png",
                              width: 19,
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          );
  }
}
