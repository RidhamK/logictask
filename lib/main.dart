import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/cart.dart';
import '/models/product.dart';
import '/models/authentication.dart';

import '/screens/signup_page.dart';
import '/screens/product_page.dart';
import '/screens/cart_page.dart';
import '/screens/product_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => AuthenticationData(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'Logic Task',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const SignUpScreen(),
        initialRoute: '/',
        routes: {
          '/': (ctx) => const SignUpScreen(),
          ProductScreen.routeName: (ctx) => const ProductScreen(),
          ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
          CartScreen.routeName: (ctx) => const CartScreen(),
        },
      ),
    );
  }
}
