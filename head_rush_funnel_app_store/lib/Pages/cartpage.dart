import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Pages/paymentpage.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Cart"),
        ),
        body: Center(
            child: ListView(children: <Widget>[
          Column(children: <Widget>[
            new Container(
              padding: (EdgeInsets.only(top: 50)),
              child: Text(
                "List of Items and Total payment calculation here",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            new Container(
              padding: (EdgeInsets.only(top: 50, left: 35, right: 35)),
              child: ElevatedButton(
                child: Text('Check out'),
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Payment();
                  }));
                },
              ),
            ),
          ]),
        ])));
  }
}
