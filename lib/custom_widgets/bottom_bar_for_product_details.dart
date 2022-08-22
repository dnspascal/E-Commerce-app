import'package:flutter/material.dart';

import '../pages/cart.dart';
class ProductDetailBottomBar extends StatelessWidget {
  const ProductDetailBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
                width: 120,
                height: 60,
                color: Colors.red[100],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                          children: const [
                            SizedBox(
                              height: 20,
                            ),
                            Text("ipad  Pro(128 GB)- Space Grey ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(" \$949.00",
                                style: TextStyle(color: Colors.black38))
                          ],
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   width: 100,
                    // ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => const Cart()));
                      },
                      icon: Image.asset(
                        "assets/icons/drawable-hdpi/viewcart_btn.png",
                        width: 45,
                        height: 45,
                      ),
                    )
                  ],
                ));
    
  }
}