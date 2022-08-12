import 'package:flutter/material.dart';

class ProductDetails1 extends StatelessWidget {
  const ProductDetails1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[900],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Product details",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white),
                ),
                Image.asset(
                  "assets/icons/drawable-hdpi/searchbutton.png",
                  width: 20,
                  height: 20,
                  color: Colors.white,
                )
              ],
            )),
        body: SingleChildScrollView(
            child: Card(
                elevation: 200,
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/icons/drawable-hdpi/heartitem.png",
                                width: 25,
                              ),
                              Image.asset(
                                "assets/icons/drawable-hdpi/favoriteditemenabled.png",
                                width: 25,
                              )
                            ]),
                        Image.asset(
                          "assets/images/image-phone.jpg",
                          width: 180,
                        ),
                        Row(
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
                        Divider(color: Colors.grey[900]),
                        Row(
                          children: const [
                            Text("Samsung Galaxy A56-128 GB ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(" \$949.00",
                                style: TextStyle(color: Colors.black87))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                                "assets/icons/drawable-hdpi/hearticon.png"),
                            const Text(
                              "653 likes",
                              style: TextStyle(color: Colors.black87),
                            ),
                            const SizedBox(
                              width: 60,
                            ),
                            const Icon(Icons.comment),
                            const Text(
                              '101  comments',
                              style: TextStyle(color: Colors.black87),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red[900]),
                              fixedSize: MaterialStateProperty.all(
                                  const Size.fromWidth(320))),
                          child: const Text("ADD TO CART"),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        const Text(
                          "239  PEOPLE LIKED THIS",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black45,
                              fontSize: 12),
                        ),
                        Divider(
                          color: Colors.grey[900],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage("assets/images/im3.jpeg"),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage("assets/images/im2.jpeg"),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage("assets/images/im1.jpeg"),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage("assets/images/im4.jpeg"),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage("assets/images/im5.jpeg"),
                              ),
                               
                            ],
                          ),
                        
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "AVARAGE   REVIEW",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black45,
                              fontSize: 12),
                        ),
                        Divider(
                          color: Colors.grey[900],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/icons/drawable-hdpi/starfilled.png",
                                width: 37,
                                height: 37,
                              ),
                              Image.asset(
                                "assets/icons/drawable-hdpi/starfilled.png",
                                width: 37,
                                height: 37,
                              ),
                              Image.asset(
                                "assets/icons/drawable-hdpi/starfilled.png",
                                width: 37,
                                height: 37,
                              ),
                              Image.asset(
                                "assets/icons/drawable-hdpi/starfilled.png",
                                width: 37,
                                height: 37,
                              ),
                              Image.asset(
                                "assets/icons/drawable-hdpi/starempty.png",
                                width: 37,
                                height: 37,
                              ),
                            ])
                      ]),
                ))));
  }
}
