
import 'package:eight_project/providers/rate_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetails1 extends StatelessWidget {
  const ProductDetails1({Key? key}) : super(key: key);
  final index1 = 0;

  @override
  Widget build(BuildContext context) {
    RateProvider rateProvider = Provider.of(context);
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              "Product details",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.white),
            ),
            centerTitle: true,
            actions: [
              Image.asset(
                "assets/icons/drawable-hdpi/searchbutton.png",
                width: 20,
                color: Colors.white,
              )
            ]),
        body: SingleChildScrollView(
            child: Card(
                elevation: 30,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                    side: const BorderSide(
                      color: Colors.transparent,
                    )),
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Expanded(
                      flex: 3,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                Image.asset(
                                    "assets/icons/drawable-hdpi/flag.png"),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "TRENDING",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                            const Divider(color: Colors.black),
                            Row(
                              children: const [
                                Text("Samsung Galaxy A56-128 GB ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
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
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.red[900]),
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
                            const Divider(
                              color: Colors.black,
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
                                              backgroundImage: AssetImage(
                                                  "assets/images/im3.jpeg"),
                                            ),
                                            SizedBox(
                                              width: 17,
                                            ),
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundImage: AssetImage(
                                                  "assets/images/im2.jpeg"),
                                            ),
                                            SizedBox(
                                              width: 17,
                                            ),
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundImage: AssetImage(
                                                  "assets/images/im1.jpeg"),
                                            ),
                                            SizedBox(
                                              width: 17,
                                            ),
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundImage: AssetImage(
                                                  "assets/images/im4.jpeg"),
                                            ),
                                            SizedBox(
                                              width: 17,
                                            ),
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundImage: AssetImage(
                                                  "assets/images/im5.jpeg"),
                                            ),
                                            SizedBox(
                                              width: 17,
                                            ),
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundImage: AssetImage(
                                                  "assets/images/im1.jpeg"),
                                            ),
                                            SizedBox(
                                              width: 17,
                                            ),
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundImage: AssetImage(
                                                  "assets/images/im1.jpeg"),
                                            ),
                                            SizedBox(
                                              width: 17,
                                            ),
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundImage: AssetImage(
                                                  "assets/images/im1.jpeg"),
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
                              "AVARAGE   REVIEW",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black45,
                                  fontSize: 12),
                            ),
                            const Divider(
                              color: Colors.black,
                            ),
                            Expanded(
                                child: SizedBox(
                                    height: 50,
                                    child: ListView.builder(
                                        itemCount: rateProvider.stars.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: ((context, index) =>
                                            IconButton(
                                              onPressed: () {
                                                rateProvider.rate1();
                                              },
                                              icon: rateProvider
                                                      .stars[index].isRated1
                                                  ? Image.asset(
                                                      "assets/icons/drawable-hdpi/starempty.png",
                                                      width: 37,
                                                      height: 37,
                                                    )
                                                  : Image.asset(
                                                      "assets/icons/drawable-hdpi/starfilled.png",
                                                      width: 37,
                                                      height: 37,
                                                    ),
                                            )))))
                          ]),
                    )))));
  }
}
