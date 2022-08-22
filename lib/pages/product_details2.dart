import 'package:eight_project/custom_widgets/bottom_bar_for_product_details.dart';
import 'package:eight_project/custom_widgets/stars.dart';

import 'package:eight_project/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetails2 extends StatefulWidget {
  const ProductDetails2({Key? key}) : super(key: key);

  @override
  State<ProductDetails2> createState() => _ProductDetails2State();
}

class _ProductDetails2State extends State<ProductDetails2> {
  @override
  Widget build(BuildContext context) {
    ProductProviders productDetailsProvider = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
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
                elevation: 30,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              productDetailsProvider.likedInDetail();
                            },
                            child: productDetailsProvider.isLikedInDetail
                                ? Image.asset(
                                    "assets/icons/drawable-hdpi/heartitem.png",
                                    width: 25.0,
                                    height: 25.0,
                                  )
                                : Image.asset(
                                    "assets/icons/drawable-hdpi/heartitemenabled.png",
                                    width: 25.0,
                                    height: 25.0,
                                  ),
                          ),
                          InkWell(
                            onTap: () {
                              productDetailsProvider
                                  .addToCartOnProductDetails();
                            },
                            child: productDetailsProvider
                                    .isAddedToCartButtonAtProductDetails
                                ? Image.asset(
                                    "assets/icons/drawable-hdpi/favoriteditem.png",
                                    width: 25.0,
                                    height: 25.0,
                                  )
                                : Image.asset(
                                    "assets/icons/drawable-hdpi/favoriteditemenabled.png",
                                    width: 25,
                                    height: 25,
                                  ),
                          ),
                        ]),
                    const SizedBox(
                      height: 0.0,
                    ),
                    Image.asset(
                      "assets/images/image-phone.jpg",
                      width: 250,
                      height: 200,
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
                        Text("ipad  Pro(128 GB)- Space Grey ",
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
                        Image.asset("assets/icons/drawable-hdpi/hearticon.png"),
                        Text(
                          " ${productDetailsProvider.numberOfLikesInDetailPage} likes",
                          style: const TextStyle(color: Colors.black87),
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
                    const SizedBox(height: 4),
                    productDetailsProvider.isAddedToCartButtonAtProductDetails
                        ? ElevatedButton(
                            onPressed: () {
                              productDetailsProvider
                                  .addToCartOnProductDetails();
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red[900]),
                                fixedSize: MaterialStateProperty.all(
                                    const Size.fromWidth(320))),
                            child: const Text("ADD TO CART"),
                          )
                        : ElevatedButton(
                            onPressed: () {
                              productDetailsProvider
                                  .addToCartOnProductDetails();
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                fixedSize: MaterialStateProperty.all(
                                    const Size.fromWidth(320))),
                            child: Row(children: [
                              const SizedBox(
                                width: 70,
                              ),
                              const Text(
                                "ADDED TO CART",
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              Image.asset(
                                  "assets/icons/drawable-hdpi/check_icon.png"),
                            ])),
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
                    Center(
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: ListView(
                                  shrinkWrap: false,
                                  scrollDirection: Axis.horizontal,
                                  children: const [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage("assets/images/im3.jpeg"),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage("assets/images/im2.jpeg"),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage("assets/images/im1.jpeg"),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage("assets/images/im4.jpeg"),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage("assets/images/im5.jpeg"),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage("assets/images/im1.jpeg"),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage("assets/images/im1.jpeg"),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage("assets/images/im1.jpeg"),
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "AVARAGE  REVIEW",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black45,
                          fontSize: 12),
                    ),
                    Divider(
                      color: Colors.grey[900],
                    ),
                    // Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //     children: [
                    //       Image.asset(
                    //         "assets/icons/drawable-hdpi/starfilled.png",
                    //         width: 37,
                    //         height: 37,
                    //       ),
                    //       Image.asset(
                    //         "assets/icons/drawable-hdpi/starfilled.png",
                    //         width: 37,
                    //         height: 37,
                    //       ),
                    //       Image.asset(
                    //         "assets/icons/drawable-hdpi/starfilled.png",
                    //         width: 37,
                    //         height: 37,
                    //       ),
                    //       Image.asset(
                    //         "assets/icons/drawable-hdpi/starfilled.png",
                    //         width: 37,
                    //         height: 37,
                    //       ),
                          // Image.asset(
                          //   "assets/icons/drawable-hdpi/starempty.png",
                          //   width: 37,
                          //   height: 37,
                          // ),
                    //     ])
                    const Stars()
                  ]),
                ))),
        bottomNavigationBar:
            productDetailsProvider.isAddedToCartButtonAtProductDetails
                ? Container(
                    width: 0,
                    height: 0,
                  )
                : const ProductDetailBottomBar());
  }
}
