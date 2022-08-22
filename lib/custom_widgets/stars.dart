import 'package:eight_project/providers/rate_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Stars extends StatelessWidget {
  const Stars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RateProvider providerForRate = Provider.of(context);
    // return Center(
    //   child: SizedBox(
    //     height: 50,
    //     child: ListView.builder(
    //         scrollDirection: Axis.horizontal,
    //         itemCount: providerForRate.stars.length,
    //         itemBuilder: (context, index) => IconButton(
    //               onPressed: () {
    //                 providerForRate.rate();
    //               },
    //               icon: providerForRate.stars[index].isRated1
    //                   ? Image.asset(
    //                       "assets/icons/drawable-hdpi/starempty.png",
    //                       width: 37,
    //                       height: 37,
    //                     )
    //                   : Image.asset(
    //                       "assets/icons/drawable-hdpi/starfilled.png",
    //                       width: 37,
    //                       height: 37,
    //                     ),
    //             )),
    //   ),
    // );

    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      IconButton(
          onPressed: () {
            providerForRate.rate1();
          },
          icon: providerForRate.stars[0].isRated1
              ? Image.asset(
                  "assets/icons/drawable-hdpi/starempty.png",
                  width: 37,
                  height: 37,
                )
              : Image.asset(
                  "assets/icons/drawable-hdpi/starfilled.png",
                  width: 37,
                  height: 37,
                )),
      IconButton(
          onPressed: () {
            providerForRate.rate2();
          },
          icon: providerForRate.stars[1].isRated2
              ? Image.asset(
                  "assets/icons/drawable-hdpi/starempty.png",
                  width: 37,
                  height: 37,
                )
              : Image.asset(
                  "assets/icons/drawable-hdpi/starfilled.png",
                  width: 37,
                  height: 37,
                )),
      IconButton(
          onPressed: () {
            providerForRate.rate3();
          },
          icon: providerForRate.stars[2].isRated3
              ? Image.asset(
                  "assets/icons/drawable-hdpi/starempty.png",
                  width: 37,
                  height: 37,
                )
              : Image.asset(
                  "assets/icons/drawable-hdpi/starfilled.png",
                  width: 37,
                  height: 37,
                )),
      IconButton(
          onPressed: () {
            providerForRate.rate4();
          },
          icon: providerForRate.stars[3].isRated4
              ? Image.asset(
                  "assets/icons/drawable-hdpi/starempty.png",
                  width: 37,
                  height: 37,
                )
              : Image.asset(
                  "assets/icons/drawable-hdpi/starfilled.png",
                  width: 37,
                  height: 37,
                )),
      IconButton(
          onPressed: () {
            providerForRate.rate5();
          },
          icon: providerForRate.stars[4].isRated5
              ? Image.asset(
                  "assets/icons/drawable-hdpi/starempty.png",
                  width: 37,
                  height: 37,
                )
              : Image.asset(
                  "assets/icons/drawable-hdpi/starfilled.png",
                  width: 37,
                  height: 37,
                ))
    ]);
  }
}
