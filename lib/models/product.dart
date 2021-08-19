import 'package:flutter/cupertino.dart';

class Product {
  final String id;
  final String title;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
  });
}

class Products with ChangeNotifier {
  final List<Product> _item = [
    Product(
        id: 'p1',
        title: 'Shirt',
        price: 999,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'),
    Product(
        id: 'p2',
        title: 't-Shirt',
        price: 599,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'),
    Product(
        id: 'p3',
        title: 'Jeans',
        price: 1999,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'),
  ];
  List<Product> get items {
    return [..._item];
  }
}
