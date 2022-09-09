// ignore_for_file: sort_child_properties_last

import 'package:eight_project/custom_widgets/bottombar.dart';
import 'package:eight_project/custom_widgets/homepage.dart';
import 'package:eight_project/custom_widgets/homepage_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(110.0), child: HomePageAppBar()),
        body: Card1(),
        bottomNavigationBar: const Bottom()
        );
  }
}
