import 'package:flutter/material.dart';
import 'package:logictask/models/product.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);
  static const routeName = 'productdetail';

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Image.network(productData.items[1].imageUrl),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Price'),
          SizedBox(
            height: 10,
          ),
          Text('Description'),
        ],
      ),
    );
  }
}
