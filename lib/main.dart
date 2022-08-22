import 'package:eight_project/providers/rate_provider.dart';
import 'package:flutter/material.dart';
import 'package:eight_project/app.dart';
import 'package:provider/provider.dart';
import 'package:eight_project/providers/product_provider.dart';

import 'package:eight_project/providers/user_provider.dart';

void main() {
  return runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ProductProviders()),
      ChangeNotifierProvider(create: (_) => UserProviders()),
      ChangeNotifierProvider(create: (_) => RateProvider())
    ],
    child: const Ecommerce(),
  ));
}
