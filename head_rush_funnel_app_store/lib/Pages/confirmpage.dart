import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/pages/home/homepage.dart';

class ConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Confirm your order"),
        ),
        body: Center(
            child: ListView(children: <Widget>[
          Column(children: <Widget>[
            new Container(
              padding: (EdgeInsets.only(top: 50)),
              child: Text(
                "Your Order Has Been Submitted! Thank You!",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            new Container(
              padding: (EdgeInsets.only(top: 50, left: 35, right: 35)),
              child: ElevatedButton(
                child: Text('Back to homepage'),
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Homepage();
                  }));
                },
              ),
            ),
          ]),
        ])));
  }
}
