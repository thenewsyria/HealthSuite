import 'package:flutter/material.dart';
import 'package:healthsuite/controller/all_products_controller.dart';
import 'package:healthsuite/views/all_products_screen.dart';
import 'package:healthsuite/views/details_screen.dart';
import 'package:healthsuite/views/login_screen.dart';
import 'package:healthsuite/utils.dart';
import 'package:provider/provider.dart';

import 'controller/login_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginController>(
          create: (_) => LoginController(),
        ),
        ChangeNotifierProvider<ProductController>(
          create: (_) => ProductController(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter',
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/detailsScreen',
        routes: {
          '/login': (context) => LoginScreen(),
          '/allProduct': (context) => AllProductsScreen(),
          '/detailsScreen': (context) => DetailsScreen(),
        },
      ),
    );
  }
}
