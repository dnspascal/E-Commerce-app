import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:provider/provider.dart';
import 'package:eight_project/providers/product_provider.dart';

class HotCustamizable extends StatelessWidget {
  const HotCustamizable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductProviders hotPageProvider = Provider.of(context);
    return ListView.builder(
      itemCount: hotPageProvider.products.length,
      scrollDirection: Axis.vertical,
      itemBuilder: ((context, index) => Card(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: const BorderSide(
                  color: Colors.transparent,
                )),
            margin: EdgeInsets.zero,
            child: Image.asset(
              hotPageProvider.products[index].imageAtTheBlurOfTheHotPage,
              fit: BoxFit.fill,
              width: 10000,
              height: 150,
            ).blurred(
                colorOpacity: 0.0,
                blurColor: Colors.transparent,
                blur: 8.0,
                overlay: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/icons/drawable-hdpi/backwardtick.png",
                              color: Colors.white,
                            ),
                            Image.asset(
                              hotPageProvider.products[index].imageOfTheProduct,
                              width: 110,
                            ),
                            Image.asset(
                              "assets/icons/drawable-hdpi/forwardtick.png",
                              color: Colors.white,
                            ),
                          ]),
                      Text(
                        hotPageProvider.products[index].productName,
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ])),
          )),
    );
  }
}
