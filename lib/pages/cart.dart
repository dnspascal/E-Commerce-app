import 'package:flutter/material.dart';
import 'package:eight_project/pages/cart.dart';
import 'package:eight_project/pages/profile.dart';
import 'package:eight_project/pages/hot.dart';
import 'package:eight_project/pages/homePage.dart';
import 'package:eight_project/custom_widgets/cart.dart';
import 'package:eight_project/custom_widgets/bottombar.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Cart",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 31, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Image.asset(
            "assets/icons/drawable-hdpi/paymentconfirmed.png",
            width: 28,
            height: 28,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Cart2(),
            
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Colors.transparent,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Text("Subtotal: "),

                        Text(
                          "\$299.5",
                          style: TextStyle(color: Colors.black26),
                        )
                      ],
                    ),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Taxes: "),
                        Text(
                          "\$0.00",
                          style: TextStyle(color: Colors.black26),
                        )
                      ],
                    ),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("TOTAL:"),
                        Text(
                          "\$299.5",
                          style: TextStyle(color: Colors.black26),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:const  Bottom(),
    );
  }
}
