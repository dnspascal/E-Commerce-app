import 'package:eight_project/custom_widgets/appbar_hot.dart';
import 'package:eight_project/custom_widgets/bottombar.dart';
import 'package:eight_project/custom_widgets/hot.dart';
import 'package:flutter/material.dart';

class Hot extends StatelessWidget {
  const Hot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(110.0),
             child: AppBarCustamizable()),
        body: HotCustamizable(),
        bottomNavigationBar: Bottom());
  }
}
