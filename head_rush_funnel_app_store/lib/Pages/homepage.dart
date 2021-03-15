import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Pages/Allitems/item1.dart';
import 'package:head_rush_funnel_app_store/Pages/Allitems/item2.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App store Homepage"),
        ),
        body: Center(
            child: ListView(children: <Widget>[
          Column(children: <Widget>[
            new Container(
              padding: (EdgeInsets.only(top: 50)),
              child: Text(
                "Item details here and discount info",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            new Container(
              padding: (EdgeInsets.only(top: 50, left: 35, right: 35)),
              child: ElevatedButton(
                child: Text('Item 1'),
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Item1();
                  }));
                },
              ),
            ),
            new Container(
              padding: (EdgeInsets.only(top: 50, left: 35, right: 35)),
              child: ElevatedButton(
                child: Text('Item 2'),
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Item2();
                  }));
                },
              ),
            ),
          ]),
        ])));
  }
}
