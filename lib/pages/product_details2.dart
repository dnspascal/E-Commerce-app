import 'package:flutter/material.dart';

class ProductDetails2 extends StatelessWidget {
  const ProductDetails2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[900],
            title: Row(
              children: [
                const SizedBox(
                  width: 90,
                ),
                const Text(
                  "Product details",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white),
                ),
                const SizedBox(
                  width: 92,
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
                  child: Column(children: [
                    Row(children: [
                      Image.asset(
                        "assets/icons/drawable-hdpi/heartitem.png",
                        width: 25,
                        height: 25,
                      ),
                      const SizedBox(
                        width: 250,
                      ),
                      Image.asset(
                        "assets/icons/drawable-hdpi/favoriteditemenabled.png",
                        width: 25,
                        height: 25.0,
                      )
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
                    const SizedBox(height: 4),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey[800]),
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
                      ]),
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
                      children: const [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/im3.jpeg"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/im2.jpeg"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/im1.jpeg"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/im4.jpeg"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/im5.jpeg"),
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
                    Row(children: [
                      const SizedBox(width: 26),
                      Image.asset(
                        "assets/icons/drawable-hdpi/starfilled.png",
                        width: 37,
                        height: 37,
                      ),
                      const SizedBox(width: 18),
                      Image.asset(
                        "assets/icons/drawable-hdpi/starfilled.png",
                        width: 37,
                        height: 37,
                      ),
                      const SizedBox(width: 18),
                      Image.asset(
                        "assets/icons/drawable-hdpi/starfilled.png",
                        width: 37,
                        height: 37,
                      ),
                      const SizedBox(width: 18),
                      Image.asset(
                        "assets/icons/drawable-hdpi/starfilled.png",
                        width: 37,
                        height: 37,
                      ),
                      const SizedBox(width: 18),
                      Image.asset(
                        "assets/icons/drawable-hdpi/starempty.png",
                        width: 37,
                        height: 37,
                      ),
                    ])
                  ]),
                ))),
        bottomNavigationBar: Container(
            width: 120,
            height: 60,
            color: Colors.red[100],
            child: Row(
              children: [
                Image.asset(
                  "assets/images/image-phone.jpg",
                  width: 42,
                  height: 42,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    Text("ipad  Pro(128 GB)- Space Grey ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(" \$949.00", style: TextStyle(color: Colors.black38))
                  ],
                ),
                const SizedBox(width: 100,),
                Image.asset(
                  "assets/icons/drawable-hdpi/viewcart_btn.png",
                  width: 45,
                  height: 45,
                )
              ],
            )));
  }
}
