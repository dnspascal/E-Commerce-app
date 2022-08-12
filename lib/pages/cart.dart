import 'package:flutter/material.dart';
import 'package:eight_project/pages/cart.dart';
import 'package:eight_project/pages/profile.dart';
import 'package:eight_project/pages/hot.dart';
import 'package:eight_project/pages/homePage.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Row(
            children: [
              const SizedBox(
                width: 138,
              ),
              const Text(
                "Cart",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 31,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 110,
              ),
              Image.asset(
                "assets/icons/drawable-hdpi/paymentconfirmed.png",
                width: 28,
                height: 28,
                color: Colors.white,
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: Colors.white,
                        )),
                    elevation: 200,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/image-controller.jpg",
                          width: 155,
                          height: 200,
                        ),
                        const Text("FitBit charge",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text("Blue-Medium",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black38,
                              fontSize: 10,
                            )),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text("\$ 199",
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 40,
                            )),
                        Container(
                            height: 30,
                            width: 100,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    side: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 1,
                                    ),
                                    Image.asset(
                                      "assets/icons/drawable-hdpi/addbutton.png",
                                      width: 19,
                                      height: 20,
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
                                      height: 20,
                                    ),
                                  ],
                                )))
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: Colors.white,
                        )),
                    elevation: 200,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/image-controller.jpg",
                          width: 165,
                          height: 200,
                        ),
                        const Text("FitBit charge",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text("Blue-Medium",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black38,
                              fontSize: 10,
                            )),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text("\$ 199",
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 40,
                            )),
                        Container(
                            height: 30,
                            width: 100,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    side: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 1,
                                    ),
                                    Image.asset(
                                      "assets/icons/drawable-hdpi/addbutton.png",
                                      width: 19,
                                      height: 20,
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
                                      height: 20,
                                    ),
                                  ],
                                )))
                      ],
                    ),
                  )
                ],
              ),
              Card(
                  child: Container(
                padding: const EdgeInsets.all(20),
                height: 200,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Text("Subtotal: "),
                        SizedBox(
                          width: 200,
                        ),
                        Text(
                          "\$299.5",
                          style: TextStyle(color: Colors.black26),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Text("Taxes: "),
                        SizedBox(
                          width: 210,
                        ),
                        Text(
                          "\$0.00",
                          style: TextStyle(color: Colors.black26),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Text("TOTAL:"),
                        SizedBox(
                          width: 210,
                        ),
                        Text(
                          "\$299.5",
                          style: TextStyle(color: Colors.black26),
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
       bottomNavigationBar: Container(
        width: 120,
        height: 75,
        color: Colors.grey[900],
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
