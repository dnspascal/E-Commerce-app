import 'package:eight_project/custom_widgets/bottombar.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Text(
            "Edit",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          title: const Text(
            "Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 31, color: Colors.white),
          ),
          centerTitle: true,
        ),
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
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
                        fixedSize: MaterialStateProperty.all(
                            const Size.fromWidth(350))),
                    child: const Text("LOGOUT"))
              ],
            ),
          ),
        ),
        bottomNavigationBar: const Bottom());
  }
}
