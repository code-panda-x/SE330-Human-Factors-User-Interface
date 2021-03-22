import 'package:flutter/material.dart';

import 'cart_counter.dart';

class Counter extends StatelessWidget {
  int get NumOfItems {
    return CartCounter().numOfItems;
  }

  const Counter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
        )
      ],
    );
  }
}
