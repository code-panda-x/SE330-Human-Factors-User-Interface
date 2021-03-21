import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Models/Cart.dart';
import 'package:head_rush_funnel_app_store/Pages/paymentpage.dart';
import 'components/body.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
      ),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
      /*new Container(
              padding: (EdgeInsets.only(top: 50, left: 35, right: 35)),
              child: ElevatedButton(
                child: Text('Check out'),
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PaymentPage();
                  }));
                },
              ),
            ),*/
    );
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double subtotal = 0.0;
    int numItems = 0;
    double discount = 0.0;
    double total = 0.0;
    String active;
    for (int i = 0; i < demoCarts.length; i++) {
      subtotal += demoCarts[i].product.price * demoCarts[i].numOfItems;
      numItems += demoCarts[1].numOfItems;
    }
    if (numItems > 3) {
      discount = -0.2;
      active = "true : 3 or more items";
    } else {
      discount = 0.0;
      active = "false : less then 3 items";
    }

    total = subtotal * (discount + 1.0);

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      height: 150,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, -15),
          blurRadius: 20,
          color: Colors.grey.withOpacity(0.5),
        )
      ]),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "SubTotal: ",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              Spacer(),
              Text(
                "\$(${subtotal.toStringAsFixed(2)})",
                style: TextStyle(fontSize: 12, color: Colors.black),
              )
            ],
          ),
          Row(
            children: [
              Text(
                "Discount: ",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              Spacer(),
              Text(
                "(20% Discount = $active)",
                style: TextStyle(fontSize: 12, color: Colors.black),
              )
            ],
          ),
          Row(
            children: [
              Text(
                "Total: ",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              Spacer(),
              Text(
                "\$(${total.toStringAsFixed(2)})",
                style: TextStyle(fontSize: 12, color: Colors.black),
              )
            ],
          ),
          SizedBox(
            //Use of SizedBox
            height: 10,
          ),
          SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  child: Text('Check Out'),
                  onPressed: () {
                    // Navigate to second route when tapped.
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Payment(total1: total);
                    }));
                  }))
        ],
      ),
    );
  }
}
