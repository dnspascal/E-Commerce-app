// ignore_for_file: sort_child_properties_last

import 'package:eight_project/pages/product%20_details.dart';
import 'package:flutter/material.dart';
import 'package:eight_project/pages/cart.dart';
import 'package:eight_project/pages/profile.dart';
import 'package:eight_project/pages/hot.dart';
import 'package:eight_project/pages/homePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/icons/drawable-hdpi/menubutton.png"),
                const SizedBox(
                  width: 100,
                ),
                const Text(
                  "BROWSE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 100,
                ),
                const Icon(Icons.search)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "ALL",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    fixedSize:
                        MaterialStateProperty.all(const Size.fromWidth(90)),
                    backgroundColor: MaterialStateProperty.all(Colors.red[900]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                              color: Colors.white,
                            )))),
              ),
              const SizedBox(width: 20),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "TRENDING",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    fixedSize:
                        MaterialStateProperty.all(const Size.fromWidth(90)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                              color: Colors.white,
                            )))),
              ),
              const SizedBox(width: 20),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "NEW",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    fixedSize:
                        MaterialStateProperty.all(const Size.fromWidth(90)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(
                              color: Colors.white,
                            )))),
              )
            ])
          ],
        ),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
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
                              Image.asset(
                                "assets/icons/drawable-hdpi/heartitem.png",
                                width: 25,
                                height: 25,
                              ),
                              Image.asset(
                                "assets/icons/drawable-hdpi/favoriteditemenabled.png",
                                width: 25,
                                height: 25,
                              )
                            ]),
                        // const SizedBox(
                        //   height: 25,
                        // ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const ProductDetails1()));
                          },
                          child: Image.asset(
                            "assets/images/image-phone.jpg",
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
                        )
                      ]),
                )),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(color: Colors.white70)),
                elevation: 30,
                shadowColor: Colors.white,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/icons/drawable-hdpi/heartitemenabled.png",
                                width: 25,
                                height: 25,
                              ),
                              Image.asset(
                                "assets/icons/drawable-hdpi/addbutton.png",
                                width: 25,
                                height: 25,
                              )
                            ]),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const ProductDetails1()));
                          },
                          child: Image.asset(
                            "assets/images/image-laptop.jpg",
                            width: 180,
                            height: 180,
                          ),
                        ),
                        const Divider(color: Colors.grey),
                        Row(
                          children: const [
                            Text("Hewlett Packard Elite Book",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(" \$1500.00",
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
                              "781 likes",
                              style: TextStyle(color: Colors.black87),
                            ),
                            const SizedBox(
                              width: 60,
                            ),
                            const Icon(Icons.comment),
                            const Text(
                              '297  comments',
                              style: TextStyle(color: Colors.black87),
                            )
                          ],
                        )
                      ]),
                ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: 120,
        height: 75,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => const HomePage()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/icons/drawable-hdpi/browsebutton.png",
                    color: Colors.white,
                  ),
                  const Text(
                    "BROWSE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const Hot()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/icons/drawable-hdpi/hotitems.png",
                      color: Colors.white),
                  const Text(
                    "HOT",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const Cart()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/icons/drawable-hdpi/cart.png",
                    color: Colors.white,
                  ),
                  const Text(
                    "CART",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => const Profile()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/icons/drawable-hdpi/profile.png",
                    color: Colors.white,
                  ),
                  const Text(
                    "PROFILE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
