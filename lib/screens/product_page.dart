import 'package:flutter/material.dart';
import 'package:logictask/models/cart.dart';
import 'package:provider/provider.dart';

import '/models/product.dart';

import '/screens/cart_page.dart';
import '/screens/product_detail_page.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);
  static const routeName = 'product_screen';

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final productData = Provider.of<Products>(context);
    final valid = ModalRoute.of(context)!.settings.arguments as bool;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(CartScreen.routeName),
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: GridView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridTile(
            child: GestureDetector(
              child: Image.network(
                productData.items[index].imageUrl,
                fit: BoxFit.cover,
              ),
              onTap: () {
                Navigator.of(context).pushNamed(ProductDetailScreen.routeName);
              },
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              title: Text(
                productData.items[index].title,
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                onPressed: () {
                  valid
                      ? cart.addItem(
                          productData.items[index].id,
                          productData.items[index].price,
                          productData.items[index].title,
                        )
                      : Navigator.of(context).pushReplacementNamed('/');
                },
                icon: const Icon(Icons.shopping_cart),
              ),
            ),
          ),
        ),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: productData.items.length,
      ),
    );
  }
}
