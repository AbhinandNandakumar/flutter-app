import 'package:flutter/material.dart';
import 'package:newapp/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        name: "Bag",
        price: 99.99,
        description: "Item description",
        imagePath: "images/bag.png"),
    Product(
        name: "Shoe",
        price: 99.99,
        description: "Item description",
        imagePath: "images/shoe.png"),
    Product(
        name: "Watch",
        price: 99.99,
        description: "Item description",
        imagePath: "images/watch.png"),
    Product(
        name: "Mobile",
        price: 99.99,
        description: "Item description",
        imagePath: "images/mobile.png"),
  ];

  // user cart

  final List<Product> _cart = [];

  // get product list

  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item into the cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
