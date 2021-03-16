import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Models/Product.dart';
import 'package:head_rush_funnel_app_store/Pages/details/components/body.dart';

class DetailsPage extends StatelessWidget {
  final Product product;

  const DetailsPage({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: AppBar(
        title: Text('Item Detail'),
      ),
      body: Body(product: product),
    );
  }
}
