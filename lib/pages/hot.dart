import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:eight_project/pages/cart.dart';
import 'package:eight_project/pages/profile.dart';
import 'package:eight_project/pages/hot.dart';
import 'package:eight_project/pages/homePage.dart';

class Hot extends StatelessWidget {
  const Hot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "HOT",
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
                child: const Text(
                  "ALL",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                onPressed: () {},
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
                child: const Text(
                  "TRENDING",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                onPressed: () {},
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
                child: const Text(
                  "NEW",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ])
          ],
        ),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: const BorderSide(
                    color: Colors.transparent,
                  )),
              margin: EdgeInsets.zero,
              child: Image.asset(
                "assets/images/image-laptop.jpg",
                fit: BoxFit.fill,
                width: 10000,
                height: 150,
              ).blurred(
                  colorOpacity: 0.0,
                  blur: 15.0,
                  overlay: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/icons/drawable-hdpi/backwardtick.png",
                                color: Colors.black,
                              ),
                              //   const SizedBox(width: 10),
                              Image.asset(
                                "assets/images/image-laptop.jpg",
                                width: 130,
                              ),
                              //  const SizedBox(width: 10),
                              Image.asset(
                                "assets/icons/drawable-hdpi/forwardtick.png",
                                color: Colors.black,
                              ),
                            ]),
                        const Text(
                          "Hewlett Packard",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ])),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: const BorderSide(
                    color: Colors.transparent,
                  )),
              margin: EdgeInsets.zero,
              child: Image.asset(
                "assets/images/image-laptop.jpg",
                fit: BoxFit.fill,
                width: 10000,
                height: 150,
              ).blurred(
                  colorOpacity: 0.0,
                  blur: 15.0,
                  overlay: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/icons/drawable-hdpi/backwardtick.png",
                                color: Colors.black,
                              ),
                      
                              Image.asset(
                                "assets/images/image-laptop.jpg",
                                width: 130,
                              ),
                          
                              Image.asset(
                                "assets/icons/drawable-hdpi/forwardtick.png",
                                color: Colors.black,
                              ),
                            ]),
                        const Text(
                          "Hewlett Packard",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ])),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: const BorderSide(
                    color: Colors.transparent,
                  )),
              margin: EdgeInsets.zero,
              child: Image.asset(
                "assets/images/image-laptop.jpg",
                fit: BoxFit.fill,
                width: 10000,
                height: 150,
              ).blurred(
                  colorOpacity: 0.0,
                  blur: 15.0,
                  overlay: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/icons/drawable-hdpi/backwardtick.png",
                                color: Colors.black,
                              ),
                              Image.asset(
                                "assets/images/image-laptop.jpg",
                                width: 130,
                              ),
                              Image.asset(
                                "assets/icons/drawable-hdpi/forwardtick.png",
                                color: Colors.black,
                              ),
                            ]),
                        const Text(
                          "Hewlett Packard",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ])),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: const BorderSide(
                    color: Colors.transparent,
                  )),
              margin: EdgeInsets.zero,
              child: Image.asset(
                "assets/images/image-laptop.jpg",
                fit: BoxFit.fill,
                width: 10000,
                height: 150,
              ).blurred(
                  colorOpacity: 0.0,
                  blur: 15.0,
                  overlay: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/icons/drawable-hdpi/backwardtick.png",
                                color: Colors.black,
                              ),
                              Image.asset(
                                "assets/images/image-laptop.jpg",
                                width: 130,
                              ),
                              Image.asset(
                                "assets/icons/drawable-hdpi/forwardtick.png",
                                color: Colors.black,
                              ),
                            ]),
                        const Text(
                          "Hewlett Packard",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ])),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: const BorderSide(
                    color: Colors.transparent,
                  )),
              margin: EdgeInsets.zero,
              child: Image.asset(
                "assets/images/image-laptop.jpg",
                fit: BoxFit.fill,
                width: 10000,
                height: 150,
              ).blurred(
                  colorOpacity: 0.0,
                  blur: 15.0,
                  overlay: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/icons/drawable-hdpi/backwardtick.png",
                                color: Colors.black,
                              ),
                              Image.asset(
                                "assets/images/image-laptop.jpg",
                                width: 130,
                              ),
                              Image.asset(
                                "assets/icons/drawable-hdpi/forwardtick.png",
                                color: Colors.black,
                              ),
                            ]),
                        const Text(
                          "Hewlett Packard",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ])),
            ),
          ]),
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
