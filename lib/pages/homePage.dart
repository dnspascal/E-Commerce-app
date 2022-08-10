// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

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
                  width: 150,
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
                        MaterialStateProperty.all(const Size.fromWidth(120)),
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
                        MaterialStateProperty.all(const Size.fromWidth(120)),
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
                        MaterialStateProperty.all(const Size.fromWidth(120)),
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
        backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:16.0),
          child: Column(
            children: [
              Card(
                  elevation: 200,
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/icons/drawable-hdpi/heartitem.png",
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(
                              width: 290,
                            ),
                            Image.asset(
                              "assets/icons/drawable-hdpi/favoriteditemenabled.png",
                              width: 25,
                              height: 25,
                            )
                          ]),
                      const SizedBox(
                        height: 25,
                      ),
                      Image.asset("assets/images/image-phone.jpg"),
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
                      const Divider(color: Colors.grey),
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
              const SizedBox(
                height: 15,
              ),
              Card(
                  elevation: 200.0,
                  shadowColor: Colors.white,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/icons/drawable-hdpi/heartitemenabled.png",
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(
                              width: 290,
                            ),
                            Image.asset(
                              "assets/icons/drawable-hdpi/addbutton.png",
                              width: 25,
                              height: 25,
                            )
                          ]),
                      const SizedBox(
                        height: 25,
                      ),
                      Image.asset("assets/images/image-laptop.jpg"),
                      const SizedBox(
                        height: 30,
                      ),
                      const Divider(color: Colors.grey),
                      Row(
                        children: const [
                          Text("Occulus Rift: Consumer Edition ",
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
                          Image.asset("assets/icons/drawable-hdpi/hearticon.png"),
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
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(5),
        width: 120,
        height: 60,
        color: Colors.grey[900],
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/icons/drawable-hdpi/browsebutton.png",
                  color: Colors.white,
                ),
                const SizedBox(height: 10.8),
                const Text(
                  "BROWSE",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              width: 67,
            ),
            Column(
              children: [
                Image.asset("assets/icons/drawable-hdpi/hotitems.png",
                    color: Colors.white),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "HOT",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              width: 67,
            ),
            Column(
              children: [
                Image.asset(
                  "assets/icons/drawable-hdpi/cart.png",
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "CART",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              width: 67,
            ),
            Column(
              children: [
                Image.asset(
                  "assets/icons/drawable-hdpi/profile.png",
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "PROFILE",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
