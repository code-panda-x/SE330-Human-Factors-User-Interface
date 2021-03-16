import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Models/Product.dart';
import 'package:head_rush_funnel_app_store/Pages/details/components/add_to_cart.dart';
import 'package:head_rush_funnel_app_store/Pages/details/components/color_and_size.dart';
import 'package:head_rush_funnel_app_store/Pages/details/components/counter.dart';
import 'package:head_rush_funnel_app_store/Pages/details/components/description.dart';
import 'package:head_rush_funnel_app_store/Pages/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 18,
                    right: 18,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Counter(),
                      SizedBox(height: 10),
                      ColorAndSize(product: product),
                      SizedBox(height: 10),
                      Description(product: product),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
