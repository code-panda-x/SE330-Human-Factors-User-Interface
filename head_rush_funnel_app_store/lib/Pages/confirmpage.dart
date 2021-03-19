import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/pages/home/homepage.dart';

class ConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
      title: Text("Confirm your order"),
    );
    return Scaffold(
        appBar: appBar2,
        body: Center(
            child: ListView(children: <Widget>[
          Column(children: <Widget>[
            new Container(
              padding: (EdgeInsets.only(top: 250, left: 20)),
              child: Text(
                "Your order has been submitted!",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            new Container(
              padding: (EdgeInsets.only(top: 20, left: 20)),
              child: Text(
                "Thank you!",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            new Container(
              padding: (EdgeInsets.only(top: 50, left: 35, right: 35)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(fontSize: 20),
                ),
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
