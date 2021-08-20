import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final double price;
  final String description;
  final String imageUrl;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.imageUrl,
  });
}

class Products with ChangeNotifier {
  final List<Product> _item = [
    Product(
        id: 'p1',
        title: 'Product 1',
        price: 999,
        description:
            '................................................................',
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'),
    Product(
        id: 'p2',
        title: 'Product 2',
        price: 599,
        description:
            'description : ................................................................',
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'),
    Product(
        id: 'p3',
        title: 'Product 3',
        price: 1999,
        description:
            '................................................................',
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'),
    Product(
        id: 'p4',
        title: 'Product 4',
        price: 999,
        description:
            '................................................................',
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'),
    Product(
        id: 'p5',
        title: 'Product 5',
        price: 999,
        description:
            '................................................................',
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'),
  ];
  List<Product> get items {
    return [..._item];
  }

  Product findById(String id) {
    return items.firstWhere((element) => element.id == id);
  }
}
