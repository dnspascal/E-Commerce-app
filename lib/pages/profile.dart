import 'package:flutter/material.dart';
import 'package:eight_project/pages/cart.dart';
import 'package:eight_project/pages/profile.dart';
import 'package:eight_project/pages/hot.dart';
import 'package:eight_project/pages/homePage.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Row(
            children: const [
              Text(
                "Edit",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 100,
              ),
              Text(
                "Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 31,
                    color: Colors.white),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 58,
                      backgroundColor: Colors.grey[500],
                      child: const CircleAvatar(
                          radius: 55,
                          backgroundImage:
                              AssetImage("assets/images/images.jpeg")),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Mark  Zuckerberg",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("""    \" I love to buy Vinyl records, ipads 
           and other tech gadgets! \" """,
                        style:
                            TextStyle(color: Colors.grey[800], fontSize: 18)),
                    const Divider(
                      color: Colors.grey,
                      indent: 25,
                      endIndent: 25,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Image.asset("assets/icons/drawable-hdpi/hearticon.png"),
                    const Text("Favorites"),
                    const Divider(
                      color: Colors.grey,
                      indent: 25,
                      endIndent: 25,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Image.asset("assets/icons/drawable-hdpi/checkicon.png"),
                    const Text("To buy"),
                    const Divider(
                      color: Colors.grey,
                      indent: 25,
                      endIndent: 25,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Image.asset("assets/icons/drawable-hdpi/carticon.png"),
                    const Text('Purchases'),
                    const Divider(
                      color: Colors.grey,
                      indent: 25,
                      endIndent: 25,
                    ),
                    const SizedBox(
                      height: 80,
                    )
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red[900]),
                      fixedSize:
                          MaterialStateProperty.all(const Size.fromWidth(350))),
                  child: const Text("LOGOUT"))
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
