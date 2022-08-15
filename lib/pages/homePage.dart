// ignore_for_file: sort_child_properties_last

import 'package:eight_project/custom_widgets/bottombar.dart';
import 'package:eight_project/custom_widgets/homepage.dart';
import 'package:eight_project/pages/product%20_details.dart';
import 'package:eight_project/pages/product_details2.dart';
import 'package:flutter/material.dart';
import 'package:eight_project/pages/cart.dart';
import 'package:eight_project/pages/profile.dart';
import 'package:eight_project/pages/hot.dart';
import 'package:eight_project/pages/homePage.dart';
import 'package:eight_project/providers/product_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductProviders productProviders = Provider.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset("assets/icons/drawable-hdpi/menubutton.png"),
        title: const Text(
          "BROWSE",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        actions: const [Icon(Icons.search)],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 30,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "ALL",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(90)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red[900]),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(90)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(5)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(90)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromWidth(90)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                        color: Colors.white,
                                      )))),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
      body:  Card1(),
      bottomNavigationBar:const Bottom()
      );}
}
