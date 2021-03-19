import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Pages/cart/cartpage.dart';

class Item1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Item1 detail"),
        ),
        body: Center(
            child: ListView(children: <Widget>[
          Column(children: <Widget>[
            new Container(
              padding: (EdgeInsets.only(top: 50)),
              child: Text(
                "Item 1 details here",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            new Container(
              padding: (EdgeInsets.only(top: 100, left: 35, right: 35)),
              child: ElevatedButton(
                child: Text('Add to cart'),
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CartPage();
                  }));
                },
              ),
            ),
          ]),
        ])));
  }
}
