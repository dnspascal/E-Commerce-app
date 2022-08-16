import 'package:eight_project/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:eight_project/pages/product _details.dart';
import "package:provider/provider.dart";

class Card1 extends StatefulWidget {
  Card1({Key? key}) : super(key: key);

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    ProductProviders productProviders = Provider.of(context);

    return ListView.builder(
      itemBuilder: ((context, index) => Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: const BorderSide(color: Colors.white70)),
          elevation: 30,
          shadowColor: Colors.white,
          child: Container(
            padding: const EdgeInsets.all(2.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              productProviders.like(index);
                            },
                            icon: productProviders.products[index].isLiked
                                ? Image.asset(
                                    "assets/icons/drawable-hdpi/heartitem.png",
                                    width: 25,
                                    height: 25,
                                  )
                                : Image.asset(
                                    "assets/icons/drawable-hdpi/heartitemenabled.png",
                                    width: 25,
                                    height: 25,
                                  )),
                        IconButton(
                            onPressed: () {
                              productProviders.addToCart(index);
                            },
                            icon: productProviders.products[index].isAddedToCart
                                ? Image.asset(
                                    "assets/icons/drawable-hdpi/favoriteditem.png",
                                    width: 25,
                                    height: 25,
                                  )
                                : Image.asset(
                                    "assets/icons/drawable-hdpi/favoriteditemenabled.png",
                                    width: 25,
                                    height: 25,
                                  ))
                      ]),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ProductDetails1()));
                    },
                    child: Image.asset(
                      productProviders.products[index].imageOfTheProduct,
                      width: 180,
                      height: 180,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/icons/drawable-hdpi/flag.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "TRENDING",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  const Divider(color: Colors.grey),
                  Row(
                    children: [
                      Text(productProviders.products[index].productName,
                          style:const TextStyle(fontWeight: FontWeight.bold)),
                      Text(productProviders.products[index].price,
                          style:const TextStyle(color: Colors.black87))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/icons/drawable-hdpi/hearticon.png"),
                      Text(
                        productProviders.products[index].numberOfLikes
                            .toString(),
                        style:const TextStyle(color: Colors.black87),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      const Icon(Icons.comment),
                      Text(
                        productProviders.products[index].numberOfComments
                            .toString(),
                        style:const TextStyle(color: Colors.black87),
                      )
                    ],
                  )
                ]),
          ))),
      itemCount: productProviders.products.length,
    );
  }
}
