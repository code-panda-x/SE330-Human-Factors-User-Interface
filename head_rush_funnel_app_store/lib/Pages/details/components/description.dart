import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Models/Product.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
