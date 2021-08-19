import 'package:flutter/material.dart';
import 'package:logictask/models/product.dart';
import 'package:logictask/screens/cart_page.dart';
import 'package:logictask/screens/product_detail_page.dart';
import 'package:provider/provider.dart';

import '/screens/signup_page.dart';
import '/screens/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'Logic Task',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SignUpScreen(),
        routes: {
          ProductScreen.routeName: (ctx) => const ProductScreen(),
          ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
          CartScreen.routeName: (ctx) => const CartScreen(),
        },
      ),
    );
  }
}
