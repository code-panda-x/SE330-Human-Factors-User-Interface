import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Original Funnel",
      price: 15,
      description: dummyText,
      image: "assets/images/Original Funnel.PNG",
      color: Colors.blue),
  Product(
      id: 2,
      title: "Glow Funnel",
      price: 15,
      description: dummyText,
      image: "assets/images/Glow Funnel.PNG",
      color: Colors.blue),
  Product(
      id: 3,
      title: "Double Funnel",
      price: 20,
      description: dummyText,
      image: "assets/images/Double Funnel.PNG",
      color: Colors.blue),
  Product(
      id: 4,
      title: "Flamingo Funnel",
      price: 16,
      description: dummyText,
      image: "assets/images/Flamingo Funnel.PNG",
      color: Colors.blue),
  Product(
      id: 5,
      title: "4 Hose Funnel",
      price: 22,
      description: dummyText,
      image: "assets/images/4 Hose Funnel.PNG",
      color: Colors.blue),
  Product(
    id: 6,
    title: "6 Hose Funnel",
    price: 70,
    description: dummyText,
    image: "assets/images/6 Hose Funnel.PNG",
    color: Colors.blue,
  ),
  Product(
      id: 7,
      title: "18 foot Funnel",
      price: 28,
      description: dummyText,
      image: "assets/images/18 ft Funnel.PNG",
      color: Colors.blue),
  Product(
    id: 8,
    title: "Inflatable Funnel",
    price: 50,
    description: dummyText,
    image: "assets/images/Inflatable Funnel.PNG",
    color: Colors.blue,
  ),
];

String dummyText = "Lorem Ipsum is simply dummy text of the printing";
