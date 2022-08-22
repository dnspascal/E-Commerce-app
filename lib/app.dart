import 'package:eight_project/pages/homePage.dart';
import 'package:eight_project/pages/login.dart';
import 'package:flutter/material.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-commerce app",
      home: HomePage(),
    );
  }
}
