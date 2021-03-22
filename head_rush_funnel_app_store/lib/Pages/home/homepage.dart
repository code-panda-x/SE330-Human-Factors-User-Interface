import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:head_rush_funnel_app_store/Models/Product.dart';
import 'package:head_rush_funnel_app_store/Pages/cart/cartpage.dart';

import 'components/body.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      //    leading: IconButton(
      //      icon: SvgPicture.asset("assets/icons/back.svg"),
      //     onPressed: () {},
      //    ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CartPage(product: null, quantity: 0);
            }));
          },
        ),
        SizedBox(width: 10)
      ],
    );
  }
}

class Item extends StatelessWidget {
  final Product product;
  final Function press;
  const Item({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(20),
            height: 200,
            width: 180,
            decoration: BoxDecoration(
              color: products[0].color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(products[0].image)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(products[0].title),
        ),
        Text("\$234", style: TextStyle(fontWeight: FontWeight.bold))
      ],
    );
  }
}
