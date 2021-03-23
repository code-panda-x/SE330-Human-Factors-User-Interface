import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Models/Cart.dart';
import 'package:head_rush_funnel_app_store/Models/Product.dart';

class Clicker extends StatefulWidget {
  @override
  _ClickerState createState() => _ClickerState();
}

class _ClickerState extends State<Clicker> {
  bool _checked = false;
  bool _checked1 = false;
  bool _checked2 = false;
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  String total = "100";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Checkbox(
              value: _checked,
              onChanged: (value) {
                setState(() {
                  _checked = !_checked;
                  demoCarts.add(new Cart(
                      product: Product(
                        id: 11,
                        title: "Extra Funnel",
                        price: 10,
                        description: "",
                        image: "assets/images/Funnel.PNG",
                        color: Colors.blue,
                      ),
                      numOfItems: 1));
                });
              },
            ),
            Text('Extra Funnel'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: _checked1,
              onChanged: (value1) {
                setState(() {
                  _checked1 = !_checked1;
                  demoCarts.add(new Cart(
                      product: Product(
                        id: 9,
                        title: "Extra Tube",
                        price: 7,
                        description: "",
                        image: "assets/images/Tube.PNG",
                        color: Colors.blue,
                      ),
                      numOfItems: 1));
                });
              },
            ),
            Text('Extra Tube'),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: _checked2,
              onChanged: (value2) {
                setState(() {
                  _checked2 = !_checked2;
                  demoCarts.add(new Cart(
                      product: Product(
                        id: 10,
                        title: "Extra Nozzle",
                        price: 5,
                        description: "",
                        image: "assets/images/Nozzle.PNG",
                        color: Colors.blue,
                      ),
                      numOfItems: 1));
                });
              },
            ),
            Text('Extra Nozzle'),
          ],
        ),
      ],
    );
  }
}
