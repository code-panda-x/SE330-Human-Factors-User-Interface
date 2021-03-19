import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Models/Product.dart';

class Cart {
  final Product product;
  final int numOfItems;

  Cart({@required this.product, @required this.numOfItems});
}

//Temp Data for demo thing
List<Cart> demoCarts = [
  Cart(product: products[0], numOfItems: 2),
  Cart(product: products[1], numOfItems: 1),
  Cart(product: products[2], numOfItems: 2),
  Cart(product: products[3], numOfItems: 3),
];